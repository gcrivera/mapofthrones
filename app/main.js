import './main.scss';
import template from './main.html';

import { ApiService } from './services/api'
import { InfoPanel } from './components/info-panel/info-panel';
import { Map } from './components/map/map';

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

    this.initializeComponents();
  }

  /** Initialize Components with data and event listeners */
  initializeComponents () {
    // Initialize Info Panel
    this.infoComponent = new InfoPanel('info-panel-placeholder', {
      data: { },
      events: { setEpisode: event => {
        const { season, episode } = event.detail;
        this.mapComponent.displayEpisode(season, episode);
      }}
    });

    // Initialize Map
    this.mapComponent = new Map('map-placeholder', {
      data: { apiService: this.api },
      events: { locationSelected: event => {
        const { info } = event.detail;
        this.infoComponent.showLocInfo(info);
      }}
    });

    this.mapComponent.displayEpisode(1,1);
  }
}

window.ctrl = new ViewController()
