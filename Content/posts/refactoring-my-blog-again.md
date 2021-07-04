---
date: 2021-07-04 18:11
description: Refactor blog mulu, nulisnya kapan?.
tags: publish, swift
language: id
---
# Refactoring My Blog (again)

Mungkin takdirnya developer tingkat kecamatan itu hanya mengubah-ubah template blog nya dan (hampir) tidak pernah meng-update tulisan di Blog nya. kalau dihitung-hitung sudah berapa kali ya gonta-ganti tech buat blogging, dari awal pake blogger, wordpress, lalu pakai CMS buatan sendiri (ini absurd sih) dan akhirnya kenal dengan Static Site Generator, barulah berganti ganti di area ini, pakai jekyll, hugo, gatsby, next js (ga tahu ssg apa bukan) dan terakhir ini paka [Swift Publish](https://github.com/JohnSundell/Publish). 

## Apa itu Static Site Generator?

Dikutip dari [Sekolah Koding](https://sekolahkoding.com/artikel/apa-itu-static-site-generator), Static Site Generator adalah tool yang akan membantu kita mengubah website yang dibangun menjadi file file statis HTML, CSS dan Javascript untuk dikonsumsi oleh penggunanya nanti.

Intinya hasil dari teknologi ini adalah web statik seperti teman teman ngoding html, css, js tanpa menggunakan technology Backend. tapi kebayang kan kalau mau bikin static web tanpa tools seperti ini, bakalan capek nulis konten nya di dalam tag html hehe. 
nah untuk lebih lengkapnya mengenai Static Site Generator silahkan baca [disini](https://sekolahkoding.com/artikel/apa-itu-static-site-generator)

## Terus gimana caranya Blog ini dibangun?

Okey okey sabar, disini aku pakai Swift Publish buatan dari Joh Sundell. gampang banget cara buatnya. begini nih

pertama clone dulu repository nya

```swift
git clone https://github.com/JohnSundell/Publish.git
```
nah habis itu kita bisa install Publish CLI nya, gampang banget tinggal pake command dibawah ini:

```swift
cd Publish
make
```

 Sampai sini kita sudah berhasil install Publish CLI nya. setelah ini kita akan bikin web nya ya. 
Pertama bikin directory / folder baru. pasti udah tahu kan caranya, tidak mungkin dong ga tahu. 
kalau belum bisa pake cara dibawah ini, ini lewat terminal, bisa juga lewat GUI. biasanya pake klik kanan
(oiya, btw pastiin temen temen punya XCode ya hehe)

```swift
mkdir My-Blog
cd My-Blog
publish new
open Package.swift
```

habis ini pasti si Xcode akan terbuka dan menampilkan project web teman teman. tunggu sampai library nya selesai di-load. 
Jika sudah selesai kita bisa mem-build project nya dengan perintah `CMD + B`, selain itu kita bisa me-running projectnya dengan perintah `CMD + R`. jika ada dialog permisson yang muncul maka pilihlah `OK`. 

Setelah selesai running biasanya akan muncul Folder `Output` nah folder inilah yang nantinya bisa kita deploy ke web kita (domain) via Netlify. 

## Cara preview di browser gimana?

Pertanyaan Bagus, Kita bisa menjalankan web di local server dengan perintah:

```swift
Publish run
```

biasanya secara default akan menggunakan port 8000, jadi teman teman bisa akses di browser dengan url `localhost:8000`

## Biar bisa pamerin web nya ke temen gimana tuh?

oiya, kan ga mungkin kita share ke temen pake url  `localhost:8000` xixixi, nah disini kita bisa pake service dari netlify. tapi sebelumnya kita perlu mendeploy web kita ke repository kayak `Github` atau `Gitlab`, bitbucket juga bisa sih. intinya bikin dulu repository, biar bisa dapet URL Remote nya.

Secara Umum Caranya mudah. masih di directory yang sama mari kita ketikan di terminal:

```swift
open .gitignore
```

Setelah muncul, silahkan tambahkan `Output` dibaris paling bawah, ini supaya folder generated bernama Output tidak perlu kita deploy ke repository, buat apa juga. 
And then:

```swift
git init
git add .
git commit -m "initial commit"
git remote add origin <URL Git Remote Repository>
git push -u origin main
```

Nah kalau sudah terdeploy di git repository kita bisa lanjut menyambungkan ke Netlify. Buka Netlify lalu Sign in pake Github kalau emang tadi deploynya ke Github, disesuaikan ajalah pokoknya. 

Kalau sudah masuk dashboard tinggal klik Button `New Site From Git` 
Pilih Service Git nya, Misal `Github`
Setelah itu hubungkan Netlify dengan Github. maka kita bisa pilih repository yang kita buat diawal tadi. 

Lalu pilih directory tersebut, Setelah itu akan ada form, isi `swift run` pada bagian `Build Command`. lalu isi `Output` pada bagian `Publish directory`

![netlify-form](https://firebasestorage.googleapis.com/v0/b/blog-dc031.appspot.com/o/ihwan.id%2Fnetlify-form.png?alt=media "Netlify Form")

Pilih tombol `Deploy` setelah itu tunggu sampai proses deployment selesai. ada log nya juga kalau kamu mau lihat. intinya eksplor saja yang ada di Dashboard netlify itu.

## Penutup

Nah sekian dulu ya yang bisa saya sharing. kalau ada pertanyaan atau apapun saya sangat terbuka untuk menjawabnya. silahkan hubungi saya di [telegram](https://t.me/ihwanid)
