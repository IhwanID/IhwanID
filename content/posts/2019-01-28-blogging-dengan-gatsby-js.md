---
date: 2019-01-28
title: 'Pengalaman Bikin Blog Dengan Gatsby Js'
template: post
thumbnail: '../thumbnails/gatsby.png'
slug: blogging-dengan-gatsby-js
categories:
  - IT
tags:
  - javascript
  - react
  - gatsby
---

Hi semuanya!

Membuat blog sudah menjadi masalah pribadiku beberapa waktu belakangan ini.
Aku sudah coba beberapa macam metode untuk membuat blog, dari mulai pake Blogspot, Wordpress, Github Pages dengan Hekyll dan Hexo, bahkan aku pernah membuatnya dengan Laravel. Sungguh riset yang sangat niat ya hehe. 

Tapi sekarang aku telah menemukan cara yang praktis dan lebih baik menurutku, setidaknya ini pandangan terbaik-ku sebagai programmer. Yup benar, jawabannya Gatsby Js, self claim dulu sih, sebenarnya aku anti dengan Framework Javascript, karena menurutku ini ga bakalan ada habisnya buat dipelajari yang mana selalu ada framework baru terus, istilah populernya Javascript Fatigue lah hehe. 

Tapi aku sering kok pake Vue Js dan JQuery dalam beberapa project web ku. Kalau untuk react dan angular aku belum mendapatkan feel ngodingnya, rasanya makin ribet aja hehe. Okeh itu sedikit intermezzo dari ku, mari kita mulai bahas gimana caraku bikin blog ini. Mudah banget kok, ga ada ribetnya sama sekali. Mungkin apa yang akan aku bagikan ini tidak seberapa, tapi aku yakin sebaik-baiknya ilmu adalah ilmu yang di amalkan.

Pertama teman-teman harus menginstall Node JS, untuk mengecek sudah terinstal atau belum, ketik saja di terminal 

```jsx
node -v
```

Kalau muncul version nya berarti sudah terinstall. Selanjutnya teman-teman bisa ketikan perintah seperti ini untuk menginstall Gatsby CLI nya. 

```jsx
npm install gatsby-cli
```

Kalau sudah di install, teman-teman bisa clone atau buat project gatsby nya, saya rekomendasikan pakai template ini [Gatsby Starter Blog](https://github.com/gatsbyjs/gatsby-starter-blog).

Mengapa? karena cukup satu perintah teman-teman sudah bisa memiliki blog di localhost teman-teman. begini perintahnya

```jsx
npx gatsby new my-blog-starter https://github.com/gatsbyjs/gatsby-starter-blog
```

Nah setelah itu teman-teman tinggal masuk ke direktory my-blog-starter lalu ketikan perintah berikut untuk melihatnya di web browser teman-teman di http://localhost:8000

```jsx
gatsby develop
```

Nah udah jadi nih blog kita, tapi gimana caranya kita bisa me-live kan blog ini, ada banyak cara, teman-teman bisa lihat dokumentasinya [disini](https://www.gatsbyjs.org/docs/deploying-and-hosting/)

Namun saya lebih merekomendasikan untuk meng-host di [netlify](https://www.netlify.com/), tinggal login dengan akun github teman-teman. Jangan lupa untuk push blog teman-teman ke repository github dan hubungkan dengan netlify nya. Secara otomatis setiap teman-teman meng-commit maka blog akan terupdate atau bisa kita istilahkan auto-deploy.

Yak mungkin segini dulu, semoga nanti bisa saya buatkan video tutorialnya agar bisa lebih jelas lagi. Terimakasih sudah membaca sampai sini, kalian luar biasa. 

