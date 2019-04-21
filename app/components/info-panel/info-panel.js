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
    this.episode = parseInt(this.refs.controlEpisode.value);
    this.triggerEvent('setEpisode', { season: this.season, episode: this.episode });
  }

  // Show information when a location is selected
  showInfo(locInfo) {
    if (locInfo == null) { 
      this.refs.title.innerHTML = "No Location Selected";
      this.refs.content.innerHTML = "";
      return;
    }

    this.refs.title.innerHTML = locInfo.name;

    const characterHTML = this.getCharacterHTML(locInfo.characters);

    this.refs.content.innerHTML = `
      <h2>Characters</h2>
      ${characterHTML}
      <h2>Summary of Location</h2>
      <div>${locInfo.summary}</div>
    `;
  }

  getCharacterHTML(characterInfo) {
    const majorChars = [];
    const minorChars = [];

    characterInfo.forEach(c => {
      if (c.image) {
        majorChars.push(`
          <div class="character">
            <img src=${c.image} />
            <div>${c.name}</div>
          </div>
        `);
      } else {
        minorChars.push(`
          <div>${c.name}</div>
        `);
      }
    });

    return `
      <div class="characters-major">${majorChars.join("")}</div>
      <h3>Other Characters</h3>
      <div class="characters-minor">${minorChars.join("")}</div>
    `;
  }
}
