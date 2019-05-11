import React, { Component } from 'react'
import NewsletterForm from './NewsletterForm'

export default class Contact extends Component {
  render() {
    return (
      <>
        <h1>Stay in touch</h1>
        <p>Like the posts you see here? Sign up to get notified about new content.</p>
        <p>You can find me around the web:</p>
        <ul>
          <li>
            <strong>Email</strong>: <a href="mailto:mynameisihwan@gmail.com">mynameisihwan@gmail.com</a>
          </li>
          <li>
            <strong>GitHub</strong>:{' '}
            <a target="_blank" href="https://github.com/ihwanid">
              ihwanid
            </a>
          </li>
          <li>
            <strong>Twitter</strong>:{' '}
            <a target="_blank" href="https://twitter.com/ihwan_id">
              ihwan_id
            </a>
          </li>
          <li>
            <strong>LinkedIn</strong>:{' '}
            <a target="_blank" href="https://linkedin.com/in/ihwanid">
              Ihwan Dede
            </a>
          </li>
        </ul>
      </>
    )
  }
}