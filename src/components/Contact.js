import React, { Component } from 'react'

export default class Contact extends Component {
  render() {
    return (
      <>
        <h1>Kontak Ihwan</h1>
        <p>Kalau ada perlu dengan saya silahkan hubungi saya lewat kontak dibawah, boleh melalui email, sosial media ataupun telegram. 
          Sebelum kirim pesan silahkan menulis salam dan tulis apa keperluannya, boleh bertanya seputar IT, sharing cerita dan pengalaman atau sekedar mengucapkan terimakasih.
          Saya tidak membalas pesan yang tidak didahulukan dengan salam, atau sekedar menulis test, p atau hanya mengirim titik. 
        </p>
        <ul>
          <li>
            <strong>Email</strong>: <a href="mailto:mynameisihwan@gmail.com">mynameisihwan@gmail.com</a>
          </li>
          <li>
            <strong>Telegram</strong>:{' '}
            <a target="_blank" href="https://t.me/ihwanid">
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