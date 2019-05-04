import './timeline-slider.scss'
import template from './timeline-slider.html'
import { Component } from '../component'

/**
 * Info Panel Component
 * Download and display metadata for selected items.
 * @extends Component
 */
export class TimelineSlider extends Component {
  /** Timeline Component Constructor
   * @param { String } placeholderId Element ID to inflate the timeline into
   */
  constructor (placeholderId, props) {
    super(placeholderId, props, template)
    this.api = props.data.apiService
    // this.season = 1;
    // this.episode = 1;
    this.allEpisodeData;
    this.setupSlider(67);

    this.refs.timelineSlider.addEventListener('change', () => this.updateSeasonEpisode());
  }

  setupSlider(totalNumEpisodes) {
    this.refs.timelineSlider.min = 1;
    this.refs.timelineSlider.max = totalNumEpisodes;
    this.refs.timelineSlider.value = this.getValue(1, 1);
    this.updateSeasonEpisode(true);
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
    const parsedValues = this.parseValue(this.refs.timelineSlider.value);
    const season = parsedValues[0];
    const episode = parsedValues[1];
    const episodeData = this.allEpisodeData[`${season}${episode}`];
    this.triggerEvent('setEpisode', { season, episode, episodeData });
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
}
