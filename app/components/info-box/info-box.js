import './info-box.scss'
import template from './info-box.html'
import { Component } from '../component'

/**
 * Info Box Component
 * Display the currently selected character.
 * @extends Component
 */
export class InfoBox extends Component {
  /** InfoBox Component Constructor
   */
  constructor (placeholderId, props) {
    super(placeholderId, props, template)

    this.refs.closeButton.addEventListener("click", () => this.triggerEvent("unSetActiveCharacter", {}));
  }

  setActiveCharacter(charInfo) {
    if (charInfo) {
      this.refs.infoBoxContainer.classList.remove("hide");
      
      const charImg = document.createElement("img");
      charImg.setAttribute("src", charInfo.image);
      this.refs.characterContainer.appendChild(charImg);

      const nameDiv = document.createElement("div");
      nameDiv.innerText = charInfo.name;
      this.refs.characterContainer.appendChild(nameDiv);
    } else {
      this.refs.characterContainer.innerText = "";
      this.refs.notPresentContainer.classList.add("hide");
      this.refs.infoBoxContainer.classList.add("hide");
    }
  }

  setNotPresent(isNotPresent) {
    if (isNotPresent) {
      this.refs.notPresentContainer.classList.remove("hide");
    } else {
      this.refs.notPresentContainer.classList.add("hide");
    }
  }
}
