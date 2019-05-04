import { CancelToken, get } from 'axios'

/** API Wrapper Service Class */
export class ApiService {
  constructor (url = 'http://localhost:5000/') {
    this.url = url
    this.cancelToken = CancelToken.source()
  }

  async httpGet (endpoint = '') {
    this.cancelToken.cancel('Cancelled Ongoing Request');
    this.cancelToken = CancelToken.source();
    const response = await get(`${this.url}${endpoint}`, { cancelToken: this.cancelToken.token });
    return response.data;
  }

  async getEpisode(seasonNum, episodeNum) {
    return this.httpGet(`episodes/${seasonNum}/${episodeNum}`);
  }

  async getAllEpisodes() {
    return await this.httpGet(`episodes`);
  }

  async getLocation(location, locations, seasonNum, episodeNum) {
    return this.httpGet(`locations/${location}/${locations}/${seasonNum}/${episodeNum}`)
  }

  async getCharacter(character, seasonNum, episodeNum) {
    return this.httpGet(`characters/${character}/${seasonNum}/${episodeNum}`)
  }

  async getCharacterTimeline(character) {
    return this.httpGet(`characters/timeline/${character}`)
  }
}
