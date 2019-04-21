import './info-panel.scss'
import template from './info-panel.html'
import { Component } from '../component'

/**
 * Info Panel Component
 * Download and display metadata for selected items.
 * @extends Component
 */
export class InfoPanel extends Component {
  /** LayerPanel Component Constructor
   * @param { Object } props.data.apiService ApiService instance to use for data fetching
   */
  constructor (placeholderId, props) {
    super(placeholderId, props, template)
    // this.api = props.data.apiService
    this.season = 1;
    this.episode = 1;
    
    // Initialize season & episode selects
    this.setOptions("controlSeason", 7);
    this.setOptions("controlEpisode", 10);

    this.refs.controlSeason.addEventListener('change', () => this.updateSeason());
    this.refs.controlEpisode.addEventListener('change', () => this.updateEpisode());
    this.refs.toggle.addEventListener('click', () => this.refs.container.classList.toggle('info-active'))
  }

  setOptions(reference, numOptions) {
    this.refs[reference].innerHTML = "";
    for (let i = 1; i <= numOptions; i++) {
      let option = document.createElement("option");
      option.setAttribute("value", i);
      option.innerHTML = i;
      this.refs[reference].appendChild(option);
    }
  }

  updateSeason() {
    const seasonNum = parseInt(this.refs.controlSeason.value);

    if (this.season !== 7 && seasonNum === 7) {
      this.setOptions("controlEpisode", 7);
    } else if (this.season === 7 && seasonNum !== 7) {
      this.setOptions("controlEpisode", 10);
    }

    this.season = seasonNum;
    this.triggerEvent('setEpisode', { season: this.season, episode: this.episode });
  }

  updateEpisode() {
    const episodeNum = parseInt(this.refs.controlEpisode.value);
    this.episode = episodeNum;
    this.triggerEvent('setEpisode', { season: this.season, episode: this.episode });
  }

  /** Show info when a map item is selected */
  // async showInfo (name, id, type) {
  //   // Display location title
  //   this.refs.title.innerHTML = `<h1>${name}</h1>`

  //   // Download and display information, based on location type
  //   this.refs.content.innerHTML = (type === 'kingdom')
  //     ? await this.getKingdomDetailHtml(id)
  //     : await this.getLocationDetailHtml(id, type)
  // }

  /** Create kingdom detail HTML string */
  // async getKingdomDetailHtml (id) {
  //   // Get kingdom metadata
  //   let { kingdomSize, castleCount, kingdomSummary } = await this.api.getAllKingdomDetails(id)

  //   // Convert size to an easily readable string
  //   kingdomSize = kingdomSize.toLocaleString(undefined, { maximumFractionDigits: 0 })

  //   // Format summary HTML
  //   const summaryHTML = this.getInfoSummaryHtml(kingdomSummary)

  //   // Return filled HTML template
  //   return `
  //     <h3>KINGDOM</h3>
  //     <div>Size Estimate - ${kingdomSize} km<sup>2</sup></div>
  //     <div>Number of Castles - ${castleCount}</div>
  //     ${summaryHTML}
  //     `
  // }

  /** Create location detail HTML string */
  // async getLocationDetailHtml (id, type) {
  //   // Get location metadata
  //   const locationInfo = await this.api.getLocationSummary(id)

  //   // Format summary template
  //   const summaryHTML = this.getInfoSummaryHtml(locationInfo)

  //   // Return filled HTML template
  //   return `
  //     <h3>${type.toUpperCase()}</h3>
  //     ${summaryHTML}`
  // }

  /** Format location summary HTML template */
  // getInfoSummaryHtml (info) {
  //   return `
  //     <h3>Summary</h3>
  //     <div>${info.summary}</div>
  //     <div><a href="${info.url}" target="_blank" rel="noopener">Read More...</a></div>`
  // }
}
