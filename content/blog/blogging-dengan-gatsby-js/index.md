---
title: Pengalaman Bikin Blog Dengan Gatsby Js
date: "2019-01-28T22:13:18.284Z"
---

Hi semuanya!

Bikin blog sudah menjadi masalah pribadiku beberapa waktu belakangan ini.
Aku sudah coba beberapa macam metode untuk bikin blog, dari mulai pake blogspot,wordpress, github pages dengan jekyll dan hexo, bahkan aku pernah membuatnya dengan laravel. Sungguh riset yang sangat niat ya hehe. 

Tapi sekarang aku telah menemukan cara yang praktis dan lebih baik menurutku, setidaknya ini pandangan terbaik ku sebagai programmer. Yup benar, jawabannya Gatsby Js. self claim dulu sih, sebenarnya aku anti dengan Framework Javascript, karena menurutku ini ga bakalan ada habisnya buat dipelajari yang mana selalu ada framework baru terus. istilah populernya Javascript Fatigue lah hehe. 

Tapi aku sering kok pake vue dan JQuery dalam beberapa project web ku. Kalau untuk react dan angular aku belum mendapatkan feel ngodingnya, rasanya makin ribet aja hehe. okeh itu sedikit intermezzo dari ku. mari kita mulai bahas gimana caraku bikin blog ini. mudah banget kok, ga ada ribetnya sama sekali. 

Pertama teman teman harus menginstall Node JS, untuk mengecek sudah terinstal apa belum ketik saja di terminal teman teman node -v, kalau muncul version nya berarti sudah terinstall.

Selanjutnya teman teman bisa ketikan perintah seperti ini untuk menginstall gatsby CLI nya. 
>npm install gatsby-cli

Kalau sudah install, teman teman bisa clone atau buat project gatsby nya, saya rekomendasikan paka template ini [Gatsby Starter Blog](https://github.com/gatsbyjs/gatsby-starter-blog).

Mengapa? karena cukup satu perintah teman teman sudah bisa memiliki blog di local teman teman. begini perintahnya
>npx gatsby new my-blog-starter https://github.com/gatsbyjs/gatsby-starter-blog

Nah setelah itu teman teman tinggal masuk ke direktoru my-blog-starter lalu ketikan perintah berikut untuk melihatnya di web browser teman-teman di http://localhost:8000
>gatsby develop

Nah udah jadi nih blog kita, tapi gimana caranya saya me-live kan blog saya ini, ada banyak cara, teman teman bisa lihat dokumentasinya [disini](https://www.gatsbyjs.org/docs/deploying-and-hosting/)

Namun saya lebih merekomendasikan untuk meng-host di [netlify](https://www.netlify.com/), tinggal login dengan akun github teman-teman. jangan lupa untuk push blog teman teman ke repository github dan hubungkan dengan netlify nya. secara otomatis setiap teman-teman meng-commit maka blog akan terupdate atau bisa kita istilahkan auto-deploy

Yak mungkin segini dulu, semoga nanti bisa saya buatkan video tutorialnya agar bisa lebih jelas lagi. terimakasih sudah membaca sampai sini. kalian luar biasa. 
