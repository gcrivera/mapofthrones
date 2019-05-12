import './map.scss'
import L from 'leaflet'
import { Component } from '../component'

const template = '<div ref="mapContainer" class="map-container"></div>'

/**
 * Leaflet Map Component
 * Render GoT map items, and provide user interactivity.
 * @extends Component
 */
export class Map extends Component {
  /** Map Component Constructor
   * @param { String } placeholderId Element ID to inflate the map into
   * @param { Object } props.events.click Map item click listener
   */
  constructor (mapPlaceholderId, props) {
    super(mapPlaceholderId, props, template);
    this.api = props.data.apiService;
    this.curLayer = null;
    this.episodeLocations = {};
    this.activeLocations = [];
    this.highlightedLocations = [];
    this.locsBy = {
      character: {},
      houseallegiance: {},
      origin: {},
      culture: {},
      religion: {}
    };

    // Initialize Leaflet map
    this.map = L.map(this.refs.mapContainer, {
      center: [ 5, 20 ],
      zoom: 4,
      maxZoom: 8,
      minZoom: 4,
      maxBounds: [ [ 50, -30 ], [ -45, 100 ] ]
    });

    this.map.zoomControl.setPosition('bottomright'); // Position zoom control

    // Render Carto GoT tile baselayer
    L.tileLayer(
      'https://cartocdn-gusc.global.ssl.fastly.net/ramirocartodb/api/v1/map/named/tpl_756aec63_3adb_48b6_9d14_331c6cbc47cf/all/{z}/{x}/{y}.png',
      { crs: L.CRS.EPSG4326 }).addTo(this.map)

      this.allEpisodeData;
  }

  // Add locations of given episode to map
  async displayEpisode(seasonNum, episodeNum, episodeData) {
    if (this.curLayer) {
      this.map.removeLayer(this.curLayer);
    }

    // Reset properties
    this.setActiveLocations([]);
    this.setHighlightedLocations([]);

    const geoJSONLocs = episodeData.locations.map(loc => {
      return {
        type: loc.st_asgeojson.type,
        coordinates: loc.st_asgeojson.coordinates,
        properties: loc
      }
    });

    this.episodeLocations = {};
    geoJSONLocs.map((loc) => {
      this.episodeLocations[loc.properties.name] = loc.properties.gid;
    });

    this.curLayer = L.geoJSON(geoJSONLocs, {
      // Show marker on location
      pointToLayer: (feature, latlng) => {
        const icon = this.getIcon(feature.properties.gid);
        return L.marker(latlng, {
          icon,
          title: feature.properties.name
        });
      },
      onEachFeature: this.onEachLocation.bind(this)
    });

    this.map.addLayer(this.curLayer);
    this.triggerEvent('locationSelected', { info: null });
  }

  setLocByInfo(charInfo, infoType, locID) {
    const locsObj = this.locsBy[infoType];
    if (charInfo[infoType]) {
      charInfo[infoType].split(", ").forEach(key => {
        if (locsObj[key]) {
          if (!locsObj[key].includes(locID)){
            locsObj[key].push(locID);
          }
        } else {
          locsObj[key] = [locID];
        }
      });
    };
  }

  /** Assign Popup and click listener for each location point */
  onEachLocation (feature, layer) {
    // Bind popup to marker
    const locTitle = document.createElement("a");
    locTitle.setAttribute("href", feature.properties.url);
    locTitle.setAttribute("target", "_blank");
    locTitle.setAttribute("class", "nostyle");
    locTitle.innerText = feature.properties.name;

    const popup = L.popup();
    popup.setContent(locTitle);

    layer.bindPopup(popup, { offset: L.point(0, -17), closeButton: false })
    layer.on({
      click: () => {
        this.triggerEvent('locationSelected', { info: feature.properties, locations: Object.keys(this.episodeLocations) });
        this.setActiveLocations([feature.properties.gid]);
        layer.openPopup();
      },
      mouseover: () => {
        layer.openPopup();
      },
      mouseout: (e) => {
        if (this.activeLocations.indexOf(feature.properties.gid) == -1)
        setTimeout(() => layer.closePopup(), 5000);
      }
    });
  }

  getIcon(locID) {

    const iconUrl = `
      <svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="16px" height="24px" viewBox="0 0 848.000000 1280.000000" preserveAspectRatio="xMidYMid meet">
        <defs>
          <linearGradient id="my-gradient" x2="0" y2="1">
            <stop stop-color="var(--color-1)" offset="50%" />
            <stop stop-color="var(--color-2)" offset="50%" />
          </linearGradient>
        </defs>
        <g class="map-icon" id={locID} stroke="none" transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
          <path d="M3935 12790 c-860 -64 -1638 -346 -2279 -827 -334 -251 -709 -621 -943 -931 -406 -539 -624 -1118 -695 -1847 -19 -199 -16 -700 5 -863 75 -567 272 -1057 740 -1837 235 -391 381 -614 1177 -1805 498 -744 581 -872 738 -1141 420 -719 756 -1422 992 -2074 114 -317 171 -504 325 -1075 36 -135 75 -264 86 -287 49 -101 153 -134 237 -73 78 57 115 146 247 597 250 854 395 1244 689 1848 352 723 750 1382 1591 2635 624 930 973 1506 1259 2078 168 335 255 565 300 794 92 461 99 1152 16 1579 -112 579 -379 1140 -788 1656 -117 148 -448 476 -611 606 -669 534 -1458 857 -2321 953 -165 18 -601 26 -765 14z"/>
        </g>
      </svg>`;

    return L.divIcon({
      className: "",
      html: L.Util.template(iconUrl, { locID: `location-${locID}` }),
      iconAnchor: [8, 24]
    });
  }

  setActiveLocations(locIDs) {
    if (this.activeLocations) {
      this.activeLocations.forEach(locID => {
        let activeElt = document.getElementById(`location-${locID}`);
        if (activeElt) { activeElt.classList.remove("active"); }
      });
    }
    if (locIDs) {
      locIDs.forEach(locID => {
        let activeElt = document.getElementById(`location-${locID}`);
        activeElt.classList.add("active");
      });
    }
    this.activeLocations = locIDs.slice();
  }

  setHighlightedLocations(locIDs) {
    if (this.highlightedLocations) {
      this.highlightedLocations.forEach(locID => {
        let activeElt = document.getElementById(`location-${locID}`);
        if (activeElt) { activeElt.classList.remove("highlight"); }
      });
    }
    if (locIDs) {
      locIDs.forEach(locID => {
        let activeElt = document.getElementById(`location-${locID}`);
        activeElt.classList.add("highlight");
      });
    }
    this.highlightedLocations = locIDs.slice();
  }

  selectLocsByChar(charName, locations) {
    this.map.closePopup();
    const locIDs = locations.map((loc) => {
      if (this.episodeLocations[loc.sublocation] != undefined) {
        return this.episodeLocations[loc.sublocation];
      } else {
        return this.episodeLocations[loc.location];
      }
    });
    this.setActiveLocations(locIDs);
  }

  highlightLocsByInfo(infoType, locs) {
    if (infoType) {
      const locIDs = locs.map((loc) => {
        if (this.episodeLocations[loc.sublocation] != undefined) {
          return this.episodeLocations[loc.sublocation];
        } else {
          return this.episodeLocations[loc.location];
        }
      });
      this.setHighlightedLocations(locIDs);
    } else {
      this.setHighlightedLocations([]);
    }
  }

  locationBack(locInfo) {
    this.triggerEvent('locationSelected', { info: locInfo, locations: Object.keys(this.episodeLocations) });
    this.setActiveLocations([locInfo.gid]);
  }
}
