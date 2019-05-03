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
    // this.season = 1;
    // this.episode = 1;

    this.setupSlider(67);

    this.refs.timelineSlider.addEventListener('change', () => this.updateSeasonEpisode());
  }

  setupSlider(totalNumEpisodes) {
    this.refs.timelineSlider.min = 1;
    this.refs.timelineSlider.max = totalNumEpisodes;
    this.refs.timelineSlider.value = this.getValue(1, 1);
    this.updateSeasonEpisode();
  }

  updateSeasonEpisode() {
    const parsedValues = this.parseValue(this.refs.timelineSlider.value);
    const season = parsedValues[0];
    const episode = parsedValues[1];
    this.triggerEvent('setEpisode', { season, episode });
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
