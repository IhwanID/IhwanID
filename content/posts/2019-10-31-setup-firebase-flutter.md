---
path: "/setup-firebase-flutter"
cover: "thumbnails/finance.jpg"
date: "2019-10-31"
title: "Firebase Setup For Flutter"
tags: ['tutorial', 'flutter']
published: true
---
Buka https://console.firebase.google.com/ dan buatlah project baru, penampakan seperti berikut. 

![create](create.png)

![step-1](step-1.png)

abaikan untuk aktifkan Google Analityc untuk project ini

jika sudah sampai sini maka selamat anda sudah berhasil membuat project firebase

![overview](overview.png)

selanjutnya mari kita setup project firebase android untuk flutter ini. 

pilih icon android dan muncul tampilan berikut, silahkan ini package name sesuai project kita. bisa di check di folder android/app/build.gradle dan cari applicationId.

karena yang lain nya opsional maka kita cukup memasukan package name nya saja. jika mau di isi maka akan lebih baik lagi. 

![add-package](add-package.png)

klik next maka akan ada perintah untuk mendownload google-services.json, silahkan di download lalu pindahkan file tersebut ke dalam folder android/app.

jika sudah maka selanjutnya adalah menambahkan firebase SDK kedalam build.gradle level project yang berada di android/build.gradle. tambahkan barus berikut didalam dependencies

```json
classpath 'com.google.gms:google-services:4.3.2'
```

kemudian buka build gradel di level module app yang berada di android/app/build.gradle dan tambahkan baris berikut di bagian paling bawah

```json
apply plugin: 'com.google.gms.google-services'
```

selanjutnya coba jalankan project anda kembali, jika tidak ada error maka selamat anda sudah berhasil setup firebase untuk project android anda

Jika ada issue tentang multidex, silahkan ikuti cara berikut :

tambahkan baris berikut didalam defaultConfig yang berada di build.gradle level app
```json
multiDexEnabled true
```

serta tambahkan baris berikut didalam dependencies di build.gradle level app
```json
implementation 'androidx.multidex:multidex:2.0.0'
```

semoga berhasil. semangat

