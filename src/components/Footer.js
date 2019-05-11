import React, { Component } from 'react'

export default class Footer extends Component {
  render() {
    return (
      <footer className="footer container">
        <div>
        <strong>Ihwan ID</strong>
          {' '}
/
          {' '}
          <a href="https://twitter.com/@ihwan_id" target="_blank">
            Twitter
          </a>
          {' '}
          /
          {' '}
          <a href="https://github.com/ihwanid" target="_blank">
            GitHub
          </a>
          {' '}
          /
          {' '}
          <a href="https://github.com/ihwanid/ihwan.id" target="_blank">
            View source
          </a>
        </div>
      </footer>
    )
  }
}