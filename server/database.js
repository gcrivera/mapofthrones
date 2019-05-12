/**
 * Postgres DB Module
 */

const postgres = require('pg')
const fs = require('fs')
const _ = require('underscore')
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

  getCharacterTimeline: async (character) => {
    let summaryQuery = `
      SELECT *
      FROM characters
      WHERE name = $1
      LIMIT(1);`
    let result = await client.query(summaryQuery, [ character ])
    let characterData = result.rows[0];

    characterData.origin = characterData.origin.split(", ");
    characterData.houseallegiance = characterData.houseallegiance.split(", ");
    characterData.culture = [characterData.culture];
    characterData.religion = characterData.religion.split(", ");

    summaryQuery = `
      SELECT *
      FROM scenes;`
    result = await client.query(summaryQuery, [ ])

    let scenes = result.rows.filter(x => {
      let charInScene = x.characters.characters.filter(char => {
        return char.name == character;
      });
      return charInScene.length > 0;
    });

    let allLocations = [];
    scenes = scenes.map(x => {
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

      delete x.sublocation;
      x.location = loc;
      return x;
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
    });

    scenes = scenes.map(x => {
      if (x.location.sublocation != undefined) {
        if (allLocationData[x.location.sublocation] != undefined) {
          x.location = allLocationData[x.location.sublocation];
        } else {
          x.location = allLocationData[x.location.location];
        }
      } else {
        x.location = allLocationData[x.location.location];
      }
      return x;
    });

    characterData.scenes = scenes;

    return characterData;
  },

  getCharacterPage: async (character, seasonNum, episodeNum) => {
    let summaryQuery = `
      SELECT *
      FROM scenes
      WHERE seasonnum = $1
      AND episodenum = $2;`
    let result = await client.query(summaryQuery, [ seasonNum, episodeNum ])
    let scenes = result.rows;

    summaryQuery = `
      SELECT *
      FROM characters
      WHERE name = $1
      LIMIT(1);`
    result = await client.query(summaryQuery, [ character ])
    let characterData = result.rows[0];
    characterData.origin = characterData.origin.split(", ");
    characterData.houseallegiance = characterData.houseallegiance.split(", ");
    characterData.culture = [characterData.culture];
    characterData.religion = characterData.religion.split(", ");
    data = characterData;

    let allCharacters = [];
    let allCharacterLocations = {};
    scenes.map(x => {
      x.characters.characters.map(char => {
        if (allCharacters.indexOf(char.name) == -1) {
          allCharacters.push(char.name);
          allCharacterLocations[char.name] = [{sublocation: x.sublocation, location: x.location}];
        } else {
          allCharacterLocations[char.name].push({sublocation: x.sublocation, location: x.location});
        }
      });
    });

    characterData.locations = allCharacterLocations[characterData.name];

    let params = [];
    for (let i = 1; i <= allCharacters.length; i++) {
      params.push('$' + i);
    }
    summaryQuery = `
      SELECT *
      FROM characters
      WHERE name IN (` + params.join(',') + `);`;
    result = await client.query(summaryQuery, allCharacters);

    characterData.sharedorigin = [];
    characterData.sharedhouseallegiance = [];
    characterData.sharedculture = [];
    characterData.sharedreligion = [];

    result.rows.map(x => {
      x.origin = x.origin.split(", ");
      x.houseallegiance = x.houseallegiance.split(", ");
      x.religion = x.religion.split(", ");

      if (_.intersection(x.origin, characterData.origin).length > 0) {
        characterData.sharedorigin = _.uniq(_.union(allCharacterLocations[x.name], characterData.sharedorigin), false, (item) => { return item.sublocation + item.location});
      }

      if (_.intersection(x.houseallegiance, characterData.houseallegiance).length > 0) {
        characterData.sharedhouseallegiance = _.uniq(_.union(allCharacterLocations[x.name], characterData.sharedhouseallegiance), false, (item) => { return item.sublocation + item.location});
      }

      if (_.intersection(x.religion, characterData.religion).length > 0) {
        characterData.sharedreligion = _.uniq(_.union(allCharacterLocations[x.name], characterData.sharedreligion), false, (item) => { return item.sublocation + item.location});
      }

      if (x.culture == characterData.culture[0]) {
        characterData.sharedculture = _.uniq(_.union(allCharacterLocations[x.name], characterData.sharedculture), false, (item) => { return item.sublocation + item.location});
      }
    });

    return characterData;

  },

  getLocation: async (location, locations, seasonNum, episodeNum) => {
    let data = {};

    locations = locations.split(',').filter((loc) => {
      return loc != location;
    });

    let summaryQuery = `
      SELECT ST_AsGeoJSON(geog), name, type, gid, summary, url
      FROM locations
      WHERE name = $1
      LIMIT(1);`
    let result = await client.query(summaryQuery, [ location ]);
    data = result.rows[0];

    summaryQuery = `
      SELECT *
      FROM scenes
      WHERE seasonnum = $1
      AND episodenum = $2
      AND sublocation = $3;`
    result = await client.query(summaryQuery, [ seasonNum, episodeNum, location ])
    if (result.rows.length == 0) {
      let params = [];
      for (let i = 4; i <= locations.length + 3; i++) {
        params.push('$' + i);
      }
      summaryQuery = `
        SELECT *
        FROM scenes
        WHERE seasonnum = $1
        AND episodenum = $2
        AND location = $3`;
        if (params.length == 0) {
          summaryQuery += ';';
          result = await client.query(summaryQuery, [ seasonNum, episodeNum, location ])
        } else {
          summaryQuery += `AND sublocation NOT IN (` + params.join(',') + `);`;
          result = await client.query(summaryQuery, [ seasonNum, episodeNum, location ].concat(locations))
        }
    }

    let allCharacters = [];
    result.rows.map(x => {
      x.characters.characters.map(char => {
        if (allCharacters.indexOf(char.name) == -1) {
          allCharacters.push(char.name);
        }
      });
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

    allCharacterData = {};
    result.rows.map(char => {
      char.main = true;
      allCharacterData[char.name] = char;
    });

    data.characters = [];
    allCharacters.map(char => {
      if (allCharacterData[char] != undefined) {
        data.characters.push(allCharacterData[char]);
      } else {
        data.characters.push({name: char, main: false});
      }
    });

    return data;

  },

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

    summaryQuery = `
      SELECT name
      FROM characters;`;
    result = await client.query(summaryQuery, [ ]);

    let allCharacterData = {};
    result.rows.map(char => {
      allCharacterData[char.name] = true;
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

        let char = [];
        let charMain = [];
        x.characters.characters.map(sceneChar => {
          if (allCharacterData[sceneChar.name] != undefined) {
            charMain.push(sceneChar.name);
          }
          char.push(sceneChar.name);
        });

        loc.char = char;
        loc.charMain = charMain;

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
        let locChars = {};

        data[x].locations = [];
        currLocs.map(loc => {
          if (loc.sublocation != undefined) {
            // Sublocation hit
            if (allLocationData[loc.sublocation] != undefined) {
              if (addedLocs.indexOf(loc.sublocation) == -1) {
                addedLocs.push(loc.sublocation)
                locChars[loc.sublocation] = {char: loc.char, charMain: loc.charMain}
              } else {
                locChars[loc.sublocation].char = _.union(locChars[loc.sublocation].char, loc.char);
                locChars[loc.sublocation].charMain = _.union(locChars[loc.sublocation].charMain, loc.charMain);
              }
            } else if (allLocationData[loc.location] != undefined) {
              if (addedLocs.indexOf(loc.location) == -1) {
                addedLocs.push(loc.location)
                locChars[loc.location] = {char: loc.char, charMain: loc.charMain}
              } else {
                locChars[loc.location].char = _.union(locChars[loc.location].char, loc.char);
                locChars[loc.location].charMain = _.union(locChars[loc.location].charMain, loc.charMain);
              }
            }
          } else {
            if (allLocationData[loc.location] != undefined) {
              if (addedLocs.indexOf(loc.location) == -1) {
                addedLocs.push(loc.location)
                locChars[loc.location] = {char: loc.char, charMain: loc.charMain}
              } else {
                locChars[loc.location].char = _.union(locChars[loc.location].char, loc.char);
                locChars[loc.location].charMain = _.union(locChars[loc.location].charMain, loc.charMain);
              }
            }
          }
        });
        addedLocs.map(addedLoc => {
          allLocationData[addedLoc].numChar = locChars[addedLoc].char.length;
          allLocationData[addedLoc].numCharMain = locChars[addedLoc].charMain.length;
          let cloneLocData = Object.assign({}, allLocationData[addedLoc]);
          data[x].locations.push({ ... cloneLocData });
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
