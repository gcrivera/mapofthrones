import './main.scss';
import template from './main.html';

import { ApiService } from './services/api'
import { InfoPanel } from './components/info-panel/info-panel';
import { Map } from './components/map/map';
import { TimelineSlider } from './components/timeline-slider/timeline-slider';

/** Main UI Controller Class */
class ViewController {
  /** Initialize Application */
  constructor () {
    document.getElementById('app').outerHTML = template;

    // Initialize API service
    if (window.location.hostname === 'localhost') {
      this.api = new ApiService('http://localhost:5000/')
    } else {
      this.api = new ApiService('https://mapofthrones.herokuapp.com/')
    }

    this.initializeComponents();
  }

  /** Initialize Components with data and event listeners */
  initializeComponents () {
    // Initialize Info Panel
    this.infoComponent = new InfoPanel('info-panel-placeholder', {
      data: { },
      events: { 
        selectCharacter: event => {
          const { name } = event.detail;
          this.mapComponent.selectLocsByChar(name);
        },
        highlightInfo: event => {
          const { infoType, key } = event.detail;
          this.mapComponent.highlightLocsByInfo(infoType, key);
        }
      }
    });

    // Initialize Map
    this.mapComponent = new Map('map-placeholder', {
      data: { apiService: this.api },
      events: { locationSelected: event => {
        const { info } = event.detail;
        this.infoComponent.showLocInfo(info);
      }}
    });

    // Initialize Timeline
    this.timelineComponent = new TimelineSlider('timeline-slider-placeholder', {
      events: {
        setEpisode: event => {
          const { season, episode } = event.detail;
          this.mapComponent.displayEpisode(season, episode);
          this.infoComponent.setSeasonEpisode(season, episode);
        }
      }
    });
  }
}

window.ctrl = new ViewController()
