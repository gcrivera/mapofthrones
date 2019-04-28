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

  getEpisodes: async () => {
    let data = {};

    let summaryQuery = `
      SELECT *
      FROM episodes;`
    let result = await client.query(summaryQuery, [ ]);
    result.rows.map(x => {
      let episodeID = x.seasonnum.toString() + x.episodenum.toString();
      data[episodeID] = x;
      data[episodeID].locations = [];
    });

    let allLocations = [];

    summaryQuery = `
      SELECT *
      FROM scenes;`
      result = await client.query(summaryQuery, [ ]);
      result.rows.map(x => {
        let episodeID = x.seasonnum.toString() + x.episodenum.toString();
        let loc = {}
        if (x.sublocation != 'NULL') {
          loc.sublocation = x.sublocation;
          if (allLocations.indexOf(x.sublocation) == -1) {
            allLocations.push(x.sublocation);
          }
        }
        loc.location = x.location;
        if (allLocations.indexOf(x.location) == -1) {
          allLocations.push(x.location);
        }
        data[episodeID].locations.push(loc);
      });

      let params = [];
      for (let i = 1; i <= allLocations.length; i++) {
        params.push('$' + i);
      }

      let allLocationData = {};

      summaryQuery = `
        SELECT ST_AsGeoJSON(geog), name, type, gid, summary, url
        FROM locations
        WHERE name IN (` + params.join(',') + `);`;
      result = await client.query(summaryQuery, allLocations);

      result.rows.map(x => {
        allLocationData[x.name] = x;
      })

      // iterate over episodes
      Object.keys(data).map(x => {
        // iterate over locations in episodes
        let currLocs = data[x].locations;
        let addedLocs = [];
        data[x].locations = [];
        currLocs.map(loc => {
          if (loc.sublocation != undefined) {
            // Sublocation hit
            if (allLocationData[loc.sublocation] != undefined) {
              if (addedLocs.indexOf(loc.sublocation) == -1) {
                data[x].locations.push(allLocationData[loc.sublocation])
                addedLocs.push(loc.sublocation)
              }
            } else if (allLocationData[loc.location] != undefined) {
              if (addedLocs.indexOf(loc.location) == -1) {
                data[x].locations.push(allLocationData[loc.location])
                addedLocs.push(loc.location)
              }
            }
          } else {
            if (allLocationData[loc.location] != undefined) {
              if (addedLocs.indexOf(loc.location) == -1) {
                data[x].locations.push(allLocationData[loc.location])
                addedLocs.push(loc.location)
              }
            }
          }
        });
      });

    return data;
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
        if (scene.sublocation != 'NULL') {
          locations[loc].super = scene.location;
        }
      } else {
        characters = characters.filter(x => locations[loc].characters.indexOf(x) == -1)
        locations[loc].characters = Array.from(new Set([...characters, ...locations[loc].characters]));
      }
    });

    let params = [];
    for (let i = 1; i <= allCharacters.length; i++) {
      params.push('$' + i);
    }
    summaryQuery = `
      SELECT *
      FROM characters
      WHERE name IN (` + params.join(',') + `);`;
    result = await client.query(summaryQuery, allCharacters);

    let allCharacterData = {}
    for (i in result.rows) {
      let row = result.rows[i];
      allCharacterData[row.name] = row;
      allCharacterData[row.name].main = true;
    }

    for (i in allCharacters) {
      let name = allCharacters[i];
      if (!allCharacterData[name]) {
        allCharacterData[name] = {name: name};
      }
    }

    let allLocations = Object.keys(locations);
    params = [];
    for (let i = 1; i <= allLocations.length; i++) {
      params.push('$' + i);
    }
    summaryQuery = `
      SELECT ST_AsGeoJSON(geog), name, type, gid, summary, url
      FROM locations
      WHERE name IN (` + params.join(',') + `);`;
    result = await client.query(summaryQuery, allLocations);

    let locMatches = [];
    for (i in result.rows) {
      let row = result.rows[i];
      locMatches.push(row.name);
    }

    let remainingLocs = allLocations.filter(x => locMatches.indexOf(x) == -1)

    let supers = {}

    for (i in remainingLocs) {
      let name = remainingLocs[i];
      if (locations[name].super != undefined ) {
        let superLoc = locations[name].super;
        if (locMatches.indexOf(superLoc) != -1) {
          let missingChars = locations[name].characters.filter(x => locations[superLoc].characters.indexOf(x) == -1)
          locations[superLoc].characters = Array.from(new Set([...missingChars, ...locations[superLoc].characters]));
        } else {
          if (supers[superLoc] != undefined) {
            let missingChars = locations[name].characters.filter(x => supers[superLoc].characters.indexOf(x) == -1)
            supers[superLoc].characters = Array.from(new Set([...missingChars, ...supers[superLoc].characters]));
          } else {
            summaryQuery = `
              SELECT ST_AsGeoJSON(geog), name, type, gid, summary, url
              FROM locations
              WHERE name = $1;`;
            superResult = await client.query(summaryQuery, [ superLoc ]);
            if (superResult.rows.length > 0) {
              let row = superResult.rows[0];
              row.characters = locations[name].characters;
              supers[superLoc] = row;
            } else {
              console.log('No Loc Match for name or super. Name: ' + name + '. Super: ' + superLoc)
            }
          }
        }
      } else {
        console.log('No loc match and Super undefined for name: ' + name)
      }
    }

    data.locations = [];
    for (i in supers) {
      let superChars = supers[i].characters.map((char) => {
        return allCharacterData[char];
      });
			supers[i].characters = superChars;
      data.locations.push(supers[i]);
    }

    for (i in result.rows) {
      let row = result.rows[i];
      row.characters = locations[row.name].characters.map((char) => {
        return allCharacterData[char];
      });
      data.locations.push(row);
    }

    data.locations = data.locations.map((loc) => {
      let geojson = JSON.parse(loc.st_asgeojson);
      loc.st_asgeojson = geojson;
      return loc;
    });

    return data;
  }
}
