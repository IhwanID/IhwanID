import React, { Component } from 'react'
import youtube from '../images/youtube.svg'
import me from '../../content/images/me.jpg'

export default class UserInfo extends Component {
  render() {
    return (
      <aside className="note">
        <div className="container note-container">
          <div className="flex-author">
            <p>
             I'm Ihwan, a Mobile Software Developer Specializing in Android and iOS from Majalengka.
            </p>
            <a href="https://www.youtube.com/channel/UCjntzibNSsjjIOh0HoP9vxw" className="donate-button" target="_blank">
              Support My Channel
              {' '}
            <img src={youtube} className="coffee-icon" />
            </a>
          </div>
          <div className="flex-avatar">
            <img className="avatar" src={me} />
          </div>
        </div>
      </aside>
    )
  }
}