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
    this.api = props.data.apiService
    this.locationInfo = null;
    this.refs.toggle.addEventListener('click', () => this.refs.container.classList.toggle('info-active'))
  }

  setSeasonEpisode(seasonNum, episodeNum, episodeData) {
    const episodeTitle = document.createElement("a");
    episodeTitle.setAttribute("href", `//imdb.com${episodeData.episodelink}`);
    episodeTitle.setAttribute("target", "_blank");
    episodeTitle.setAttribute("class", "nostyle");
    episodeTitle.innerText = episodeData.episodetitle;

    this.refs.episodeTitle.innerHTML = "";
    this.refs.episodeTitle.appendChild(episodeTitle);
    this.refs.seasonNum.innerText = seasonNum;
    this.refs.episodeNum.innerText = episodeNum;
  }

  // Show information when a location is selected
  async showLocInfo(locInfo, locations) {
    if (locInfo == null) {
      this.refs.title.innerHTML = "No Location Selected";
      this.refs.content.innerHTML = "";
      return;
    }

    locInfo = await this.api.getLocation(locInfo.name, locations, this.refs.seasonNum.innerText, this.refs.episodeNum.innerText)
    this.locationInfo = locInfo;

    this.refs.backButton.classList.remove("active");
    this.refs.backButton.removeEventListener("click", this.listener);

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

  async showCharInfo(charInfo) {
    charInfo = await this.api.getCharacter(charInfo.name, this.refs.seasonNum.innerText, this.refs.episodeNum.innerText);

    const charName = document.createElement("a");
    charName.setAttribute("href", charInfo.url);
    charName.setAttribute("target", "_blank");
    charName.setAttribute("class", "nostyle");
    charName.innerText = charInfo.name;

    this.refs.title.innerHTML = "";
    this.refs.title.appendChild(charName);

    this.triggerEvent("selectCharacter", { name: charInfo.name, locations: charInfo.locations });
    this.refs.content.innerHTML = "";

    const charImg = document.createElement("img");
    charImg.setAttribute("src", charInfo.image);
    charImg.setAttribute("class", "character-img");

    const charDiv = document.createElement("div");
    this.getCharInfoHTML(charDiv, "House Allegiance", charInfo.houseallegiance, charInfo.sharedhouseallegiance);
    this.getCharInfoHTML(charDiv, "Origin", charInfo.origin, charInfo.sharedorigin);
    this.getCharInfoHTML(charDiv, "Culture", charInfo.culture, charInfo.sharedculture);
    this.getCharInfoHTML(charDiv, "Religion", charInfo.religion, charInfo.sharedreligion);

    this.refs.content.appendChild(charImg);
    this.refs.content.appendChild(charDiv);
    
    let self = this;
    this.listener = function () { self.triggerEvent('locationBack', { locInfo: self.locationInfo }); }
    this.refs.backButton.classList.add("active");
    this.refs.backButton.addEventListener("click", this.listener);
  }

  getCharInfoHTML(charDiv, header, info, sharedLocs) {
    const headerHTML = document.createElement("h2");
    headerHTML.innerText = header;

    const infoDiv = document.createElement("div");
    info.forEach((infoItem, i) => {
      if (i !== 0) {
        const comma = document.createElement("span");
        comma.innerText = ", ";
        infoDiv.appendChild(comma);
      }
      const infoItemSpan = document.createElement("span");
      infoItemSpan.innerText = infoItem;
      infoItemSpan.classList.add("character-info-item");
      if (infoItem !== "Unknown" && infoItem !== "Self") {
        infoItemSpan.addEventListener("mouseover", () => {
          infoItemSpan.classList.add("hover");
          this.triggerEvent("highlightInfo", {
            infoType: header.replace(/\s/g,'').toLowerCase(),
            locs: sharedLocs
          });
        });
        infoItemSpan.addEventListener("mouseout", () => {
          infoItemSpan.classList.remove("hover");
          this.triggerEvent("highlightInfo", {});
        });
      }
      infoDiv.appendChild(infoItemSpan);
    })

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

  open() {
    this.refs.container.classList.add("info-active");
  }

  close() {
    this.refs.container.classList.remove("info-active");
  }
}
