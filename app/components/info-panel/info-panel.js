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
  showLocInfo(locInfo) {
    if (locInfo == null) {
      this.refs.title.innerHTML = "No Location Selected";
      this.refs.content.innerHTML = "";
      return;
    }

    const locTitle = document.createElement("a");
    locTitle.setAttribute("href", locInfo.url);
    locTitle.setAttribute("target", "_blank");
    locTitle.setAttribute("class", "nostyle");
    locTitle.innerText = locInfo.name;

    this.refs.title.innerHTML = "";
    this.refs.title.appendChild(locTitle);//locInfo.name;

    // Reset content before adding;
    this.refs.content.innerHTML = "";

    const charHeader = document.createElement("h2");
    charHeader.innerText = "Characters";
    this.refs.content.appendChild(charHeader);

    const characterHTML = this.getCharacterHTML(locInfo.characters);
    characterHTML.forEach(object => this.refs.content.appendChild(object));

    const summaryHeader = document.createElement("h2");
    summaryHeader.innerText = "Summary of Location";
    this.refs.content.appendChild(summaryHeader);

    const summaryContent = document.createElement("div");
    summaryContent.innerText = locInfo.summary;
    this.refs.content.appendChild(summaryContent);
  }

  showCharInfo(charInfo) {
    this.refs.title.innerHTML = charInfo.name;
    this.refs.content.innerHTML = "";

    const charImg = document.createElement("img");
    charImg.setAttribute("src", charInfo.image);
    charImg.setAttribute("class", "character-img");
    
    const charDiv = document.createElement("div");
    this.getCharInfoHTML(charDiv, "House Allegiance", charInfo.houseallegiance);
    this.getCharInfoHTML(charDiv, "Origin", charInfo.origin);
    this.getCharInfoHTML(charDiv, "Culture", charInfo.culture);
    this.getCharInfoHTML(charDiv, "Religion", charInfo.religion);

    this.refs.content.appendChild(charImg);
    this.refs.content.appendChild(charDiv);
  }

  getCharInfoHTML(charDiv, header, info) {
    const headerHTML = document.createElement("h2");
    headerHTML.innerText = header;

    const infoDiv = document.createElement("div");
    info.split(", ").forEach((infoItem, i) => {
      if (i !== 0) {
        const comma = document.createElement("span");
        comma.innerText = ", ";
        infoDiv.appendChild(comma);
      }
      const infoItemSpan = document.createElement("span");
      infoItemSpan.innerText = infoItem;
      infoItemSpan.classList.add("character-info-item");
      infoItemSpan.addEventListener("mouseover", () => {
        this.triggerEvent("highlightInfo", {
          infoType: header.replace(/\s/g,'').toLowerCase(),
          key: infoItem
        });
      });
      infoItemSpan.addEventListener("mouseout", () => {
        this.triggerEvent("highlightInfo", {});
      });
      infoDiv.appendChild(infoItemSpan);
    });

    charDiv.appendChild(headerHTML);
    charDiv.appendChild(infoDiv);
  }

  getCharacterHTML(characterInfo) {
    const majorCharDiv = document.createElement("div");
    majorCharDiv.setAttribute("class", "characters-major");

    const otherCharHeader = document.createElement("h3");
    otherCharHeader.innerText = "Other Characters";

    const minorCharDiv = document.createElement("div");
    minorCharDiv.setAttribute("class", "characters-minor");

    characterInfo.forEach(c => {
      if (c.image) {
        const charDiv = document.createElement("div");
        charDiv.setAttribute("class", "character");
        charDiv.onclick = () => { 
          this.showCharInfo(c);
          this.triggerEvent("selectCharacter", { name: c.name }); 
        };

        const charImg = document.createElement("img");
        charImg.setAttribute("src", c.image);
        charImg.setAttribute("class", "thumbnail")
        charDiv.appendChild(charImg);

        const nameDiv = document.createElement("div");
        nameDiv.innerText = c.name;
        charDiv.appendChild(nameDiv);

        majorCharDiv.appendChild(charDiv);
      } else {
        const charDiv = document.createElement("div");
        charDiv.innerText = c.name;
        minorCharDiv.appendChild(charDiv);
      }
    });

    if (!majorCharDiv.hasChildNodes()) {
      const noChar = document.createElement("div");
      noChar.innerText = "No major characters appeared in this location.";
      majorCharDiv.appendChild(noChar);
    }

    if (!minorCharDiv.hasChildNodes()) {
      otherCharHeader.innerText = "";
    }

    return [majorCharDiv, otherCharHeader, minorCharDiv];
  }
}
