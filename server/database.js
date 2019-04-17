/**
 * Postgres DB Module
 */

const postgres = require('pg')
const fs = require('fs')
const log = require('./logger')
const connectionString = process.env.DATABASE_URL

console.log(connectionString)

// Initialize postgres client
const client = new postgres.Client({ connectionString, ssl:true })

// Connect to the DB
client.connect().then(() => {
  log.info(`Connected To ${client.database} at ${client.host}:${client.port}`)
}).catch(log.error)

module.exports = {
  /** Query the current time */
  queryTime: async () => {
    const result = await client.query('SELECT NOW() as now')
    return result.rows[0]
  },

  /** Query the locations as geojson, for a given type */
  getLocations: async (type) => {
    const locationQuery = `
      SELECT ST_AsGeoJSON(geog), name, type, gid
      FROM locations
      WHERE UPPER(type) = UPPER($1);`
    const result = await client.query(locationQuery, [ type ])
    return result.rows
  },

  /** Query the kingdom boundaries */
  getKingdomBoundaries: async () => {
    const boundaryQuery = `
      SELECT ST_AsGeoJSON(geog), name, gid
      FROM kingdoms;`
    const result = await client.query(boundaryQuery)
    return result.rows
  },

  /** Calculate the area of a given region, by id */
  getRegionSize: async (id) => {
    const sizeQuery = `
      SELECT ST_AREA(geog) as size
      FROM kingdoms
      WHERE gid = $1
      LIMIT(1);`
    const result = await client.query(sizeQuery, [ id ])
    return result.rows[0]
  },

  /** Count the number of castles in a region, by id */
  countCastles: async (regionId) => {
    const countQuery = `
      SELECT count(*)
      FROM kingdoms, locations
      WHERE ST_intersects(kingdoms.geog, locations.geog)
      AND kingdoms.gid = $1
      AND locations.type = 'Castle';`
    const result = await client.query(countQuery, [ regionId ])
    return result.rows[0]
  },

  /** Get the summary for a location or region, by id */
  getSummary: async (table, id) => {
    if (table !== 'kingdoms' && table !== 'locations') {
      throw new Error(`Invalid Table - ${table}`)
    }

    const summaryQuery = `
      SELECT summary, url
      FROM ${table}
      WHERE gid = $1
      LIMIT(1);`
    const result = await client.query(summaryQuery, [ id ])
    return result.rows[0]
  },

  getEpisode: async (seasonNum, episodeNum) => {
    let data;

    // Get general episode data
    let summaryQuery = `
      SELECT *
      FROM episodes
      WHERE seasonnum = $1
      AND episodenum = $2
      LIMIT(1);`
    let result = await client.query(summaryQuery, [ seasonNum, episodeNum ])
    data = result.rows[0]

    summaryQuery = `
      SELECT *
      FROM scenes
      WHERE seasonnum = $1
      AND episodenum = $2;`
    result = await client.query(summaryQuery, [ seasonNum, episodeNum ])

    let locations = {};
    let loc;
    let characters;
    let allCharacters = [];
    result.rows.forEach((scene) => {
      loc = scene.location;
      if (scene.sublocation != 'NULL') {
        loc = scene.sublocation;
      }
      characters = scene.characters.characters.map((char) => {
        return char.name
      });
      newCharacters = characters.filter(x => allCharacters.indexOf(x) == -1)
      allCharacters = Array.from(new Set([...newCharacters, ...allCharacters]));


      if (!locations[loc]) {
        locations[loc] = {
          characters: characters
        }
      } else {
        characters = characters.filter(x => locations[loc].characters.indexOf(x) == -1)
        locations[loc].characters = Array.from(new Set([...characters, ...locations[loc].characters]));
      }
    });

    for (loc in locations) {
      summaryQuery = `
        SELECT *
        FROM locations
        WHERE name = $1;`
      result = await client.query(summaryQuery, [ loc ])
      let loc_data = result.rows[0];
      if (loc_data != undefined) {
        loc_data.characters = locations[loc].characters;
        locations[loc] = loc_data;
      }
    }

    // TODO: Query for main character data and add it to locations object
    console.log(allCharacters)


  }
}
