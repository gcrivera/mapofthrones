import './timeline-slider.scss'
import template from './timeline-slider.html'
import { Component } from '../component'

/**
 * Timeline Slider Component
 * Select season and episode to display.
 * @extends Component
 */
export class TimelineSlider extends Component {
  /** Timeline Component Constructor
   * @param { String } placeholderId Element ID to inflate the timeline into
   */
  constructor (placeholderId, props) {
    super(placeholderId, props, template)
    this.api = props.data.apiService

    this.allEpisodeData;
    this.activeCharLocs;
    this.setupSlider(67);
    this.setupTicks();

    this.refs.timelineSlider.addEventListener('change', () => this.updateSeasonEpisode());
  }

  setupSlider(totalNumEpisodes) {
    this.refs.timelineSlider.min = 1;
    this.refs.timelineSlider.max = totalNumEpisodes;
    this.refs.timelineSlider.value = this.getValue(1, 1);
    this.updateSeasonEpisode(true);
  }

  setupTicks() {
    // All the numbers hardcoded are based off the number of episodes in seasons 1-7
    // Adding episodes from season 8 would require modifying this code.
    const numEps = [10, 20, 30, 40, 50, 60]
    for (let i = 0; i < numEps.length; i++) {
      const tickContainer = document.createElement("div");
      tickContainer.classList.add("timeline-tick-container");
      tickContainer.style.left = `${numEps[i] / 67 * 100}%`;
      
      const tick = document.createElement("div");
      tick.classList.add("timeline-tick");
      tickContainer.appendChild(tick);

      if (i % 2 === 0) {
        const tickLabel = document.createElement("div");
        tickLabel.classList.add("timeline-tick-label");
        tickLabel.innerText = `Season ${i + 2}`;
        tickContainer.appendChild(tickLabel);
      }

      this.refs.timelineContainer.appendChild(tickContainer);
    }
  }

  async updateSeasonEpisode(initialize=false) {
    if (initialize) {
      this.allEpisodeData = await this.api.getAllEpisodes();
      Object.keys(this.allEpisodeData).map(key => {
        this.allEpisodeData[key].locations = this.allEpisodeData[key].locations.map(loc => {
          loc.st_asgeojson = JSON.parse(loc.st_asgeojson);
          return loc;
        });
      });
    }
    // const parsedValues = this.parseValue(this.refs.timelineSlider.value);
    // const season = parsedValues[0];
    // const episode = parsedValues[1];
    // const key = `${season}${episode}`;
    // const episodeData = this.allEpisodeData[key];

    // if (this.activeCharLocs) {
    //   let newLocs = this.activeCharLocs[key] ? this.activeCharLocs[key] : [];
    //   episodeData.locations = newLocs.map(loc => {
    //     return episodeData.locations.filter(orgLoc => orgLoc.name === loc.name)[0];
    //   });
    // }
    const episodeInfo = this.getEpisodeInfo()
    this.triggerEvent('setEpisode', episodeInfo);
  }

  getValue(seasonNum, episodeNum) {
    return (seasonNum - 1) * 10 + episodeNum;
  }

  parseValue(value) {
    let episodeNum = value % 10;
    if (episodeNum === 0) { episodeNum = 10; }
    const seasonNum = (value - episodeNum) / 10 + 1;
    return [seasonNum, episodeNum];
  }

  getEpisodeInfo() {
    const parsedValues = this.parseValue(this.refs.timelineSlider.value);
    const season = parsedValues[0];
    const episode = parsedValues[1];
    const key = `${season}${episode}`;
    const episodeData = this.allEpisodeData[key];

    if (this.activeCharLocs) {
      let newLocs = this.activeCharLocs[key] ? this.activeCharLocs[key] : [];
      episodeData.locations = newLocs.map(loc => {
        return episodeData.locations.filter(orgLoc => orgLoc.name === loc.name)[0];
      });
    }
    return { season, episode, episodeData };
  }

  async setActiveCharacter(charInfo) {
    if (!charInfo) {
      this.activeCharLocs = null;
      return;
    }
    
    const activeCharInfo = await this.api.getCharacterTimeline(charInfo.name);
    this.activeCharLocs = {};
    activeCharInfo.scenes.map(scene => {
      const key = `${scene.seasonnum}${scene.episodenum}`;
      if (!this.activeCharLocs[key]) { 
        this.activeCharLocs[key] = []; 
      }
      // determining if loc is already in array
      const locInLocs = this.activeCharLocs[key].filter(loc => loc.name === scene.location.name);
      if (locInLocs.length === 0) {
        scene.location.st_asgeojson = JSON.parse(scene.location.st_asgeojson);
        this.activeCharLocs[key].push(scene.location);
      }
    });

    const { episodeData } = this.getEpisodeInfo();

    this.triggerEvent('updateMap', { episodeData });
  }
}
