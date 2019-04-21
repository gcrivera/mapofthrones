import './main.scss';
import template from './main.html';

import { ApiService } from './services/api'
import { InfoPanel } from './components/info-panel/info-panel';
import { Map } from './components/map/map';
// import { LayerPanel } from './components/layer-panel/layer-panel'

/** Main UI Controller Class */
class ViewController {
  /** Initialize Application */
  constructor () {
    document.getElementById('app').outerHTML = template;

    // Initialize API service
    this.api = new ApiService('http://localhost:5000/') // TODO
    // if (window.location.hostname === 'localhost') {
    //   this.api = new ApiService('http://localhost:5000/')
    // } else {
    //   this.api = new ApiService('https://api.atlasofthrones.com/')
    // }

    // this.locationPointTypes = [ 'castle', 'city', 'town', 'ruin', 'region', 'landmark' ]
    this.initializeComponents();
  }

  /** Initialize Components with data and event listeners */
  initializeComponents () {
    // Initialize Info Panel
    this.infoComponent = new InfoPanel('info-panel-placeholder', {
      data: { },
      events: { setEpisode: event => {
        const { seasonNum, episodeNum } = event.detail;
        this.mapComponent.displayEpisode(seasonNum, episodeNum);
      }}
    });

    // Initialize Map
    // this.mapComponent = new Map('map-placeholder', {
    //   events: { locationSelected: event => {
    //     // Show data in infoComponent on "locationSelected" event
    //     const { name, id, type } = event.detail
    //     this.infoComponent.showInfo(name, id, type)
    //   }}
    // })
    this.mapComponent = new Map('map-placeholder', {
      data: { apiService: this.api }
    });

    this.mapComponent.displayEpisode(1,1);

  //   // Initialize Layer Toggle Panel
  //   this.layerPanel = new LayerPanel('layer-panel-placeholder', {
  //     data: { layerNames: ['kingdom', ...this.locationPointTypes] },
  //     events: { layerToggle:
  //       // Toggle layer in map controller on "layerToggle" event
  //       event => { this.mapComponent.toggleLayer(event.detail) }
  //     }
  //   })
  }

  /** Load map data from the API */
  // async loadMapData () {

  //   // Download kingdom boundaries
  //   const kingdomsGeojson = await this.api.getKingdoms()

  //   // Add boundary data to search service
  //   this.searchService.addGeoJsonItems(kingdomsGeojson, 'kingdom')

  //   // Add data to map
  //   this.mapComponent.addKingdomGeojson(kingdomsGeojson)

  //   // Show kingdom boundaries
  //   this.layerPanel.toggleMapLayer('kingdom')

  //   // Download location point geodata
  //   for (let locationType of this.locationPointTypes) {
  //     // Download location type GeoJSON
  //     const geojson = await this.api.getLocations(locationType)

  //     // Add location data to search service
  //     this.searchService.addGeoJsonItems(geojson, locationType)

  //     // Add data to map
  //     this.mapComponent.addLocationGeojson(locationType, geojson, this.getIconUrl(locationType))
  //   }
  // }

  /** Format icon url for layer type  */
  // getIconUrl (layerName) {
  //   return `https://cdn.patricktriest.com/atlas-of-thrones/icons/${layerName}.svg`
  // }
}

window.ctrl = new ViewController()
