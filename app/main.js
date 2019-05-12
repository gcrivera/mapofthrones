import './main.scss';
import template from './main.html';

import { ApiService } from './services/api'
import { InfoBox } from './components/info-box/info-box';
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
    // Initialize Info Box
    this.infoBoxComponent = new InfoBox('info-box-placeholder', {});
    
    // Initialize Info Panel
    this.infoComponent = new InfoPanel('info-panel-placeholder', {
      data: { apiService: this.api },
      events: {
        selectCharacter: event => {
          const { name, locations } = event.detail;
          this.mapComponent.selectLocsByChar(name, locations);
        },
        highlightInfo: event => {
          const { infoType, locs } = event.detail;
          this.mapComponent.highlightLocsByInfo(infoType, locs);
        },
        locationBack: event => {
          const { locInfo } = event.detail;
          this.mapComponent.locationBack(locInfo);
        },
        setActiveCharacter: event => {
          const { charInfo } = event.detail;
          this.infoBoxComponent.setActiveCharacter(charInfo);
          this.timelineComponent.setActiveCharacter(charInfo);
        }
      }
    });

    // Initialize Map
    this.mapComponent = new Map('map-placeholder', {
      data: { apiService: this.api },
      events: { locationSelected: event => {
        const { info, locations } = event.detail;
        this.infoComponent.showLocInfo(info, locations);
        if (info) {
          this.infoComponent.open();
        } else {
          this.infoComponent.close();
        }
      }}
    });

    // Initialize Timeline
    this.timelineComponent = new TimelineSlider('timeline-slider-placeholder', {
      data: { apiService: this.api },
      events: {
        setEpisode: event => {
          const { season, episode, episodeData } = event.detail;
          this.mapComponent.displayEpisode(episodeData);
          this.infoComponent.setSeasonEpisode(season, episode, episodeData);
        }
      }
    });
  }
}

window.ctrl = new ViewController()
