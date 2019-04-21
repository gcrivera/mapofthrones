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
  }

  // Add locations of given episode to map
  async displayEpisode(seasonNum, episodeNum) {
    const episodeInfo = await this.api.getEpisode(seasonNum, episodeNum);

    const geoJSONLocs = episodeInfo.locations.map(loc => {
      return { 
        type: loc.st_asgeojson.type, 
        coordinates: loc.st_asgeojson.coordinates, 
        properties: loc
      }
    });

    const curLayer = L.geoJSON(geoJSONLocs, {
      // Show marker on location
      pointToLayer: (feature, latlng) => {
        return L.marker(latlng, {
          // TODO hard coded iconURL
          icon: L.icon({ 
            iconUrl: "http://localhost:8080/images/locationPinDark.png", 
            iconSize: [ 16, 24 ] 
          }),
          title: feature.properties.name })
      },
      // onEachFeature: this.onEachLocation.bind(this)
    });

    this.map.addLayer(curLayer);
  }

  /** Assign Popup and click listener for each location point */
  // onEachLocation (feature, layer) {
  //   // Bind popup to marker
  //   layer.bindPopup(feature.properties.name, { closeButton: false })
  //   layer.on({ click: (e) => {
  //     const { name, id, type } = feature.properties
  //     this.triggerEvent('locationSelected', { name, id, type })
  //   }})
  // }

  /** Trigger "click" on layer with provided name */
  // selectLocation (id, layerName) {
  //   // Find selected layer
  //   const geojsonLayer = this.layers[layerName]
  //   const sublayers = geojsonLayer.getLayers()
  //   const selectedSublayer = sublayers.find(layer => {
  //     return layer.feature.geometry.properties.id === id
  //   })

  //   // Zoom map to selected layer
  //   if (selectedSublayer.feature.geometry.type === 'Point') {
  //     this.map.flyTo(selectedSublayer.getLatLng(), 5)
  //   } else {
  //     this.map.flyToBounds(selectedSublayer.getBounds(), 5)
  //   }

  //   // Fire click event
  //   selectedSublayer.fireEvent('click')
  // }
}
