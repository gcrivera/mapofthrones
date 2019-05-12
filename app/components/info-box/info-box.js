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
  }

  setActiveCharacter(charInfo) {
    if (charInfo) {
      this.refs.characterContainer.innerText = charInfo.name;
    } else {
      this.refs.characterContainer.innerText = "";
    }
  }
}
