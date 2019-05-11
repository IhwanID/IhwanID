import React, { Component } from 'react'
import coffee from '../images/coffee.svg'
import me from '../../content/images/me.jpg'

export default class UserInfo extends Component {
  render() {
    return (
      <aside className="note">
        <div className="container note-container">
          <div className="flex-author">
            <p>
             I'm Ihwan, a full-stack software developer specializing in modern JavaScript. I make
              open source coding projects and write free, quality articles and tutorials that help
              thousands of people daily. No ads, no sponsored posts, no bullshit.
            </p>
            <a href="https://ko-fi.com/ihwanid" className="donate-button" target="_blank">
              Buy me a coffee 
              {' '}
            <img src={coffee} className="coffee-icon" />
            </a>
            <a
              className="patreon-button"
              href="https://www.patreon.com/ihwanid"
              target="_blank"
            >
              Patreon
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