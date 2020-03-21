---
path: "/icon-app-android-ios-flutter"
cover: "thumbnails/flutter.png"
date: "2020-03-21"
title: "Mengganti Icon App iOS Android di Flutter"
tags: ['flutter']
published: true
---
banyak cara yang akan memudahkan kita dalam pengembangan aplikasi menggunakan flutter. dari sekian banyak cara mengganti default icon app flutter saya menemukan cara yang cocok untuk saya. 

pertama temen teman siapkan dulu gambar yang akan dijadikan icon app. usahakan ukuran nya 1:1 (persegi) dan kualitas nya bagus. selanjutnya silahkan mengunjungi web https://appicon.co/ kemudian masukan gambar, pilih untuk android & ios saja sudah cukup. selanjutnya klik generate dan extrack file yang sudah di download.

kalau dilihat lihat folder hasil extrakan nya memeliki beberapa folder & banyak file. kita gunakan seperlunya kita saja ya. 

pertama untuk android. 
silahkan pergi ke direktory /android/app/src/main/res dan replace semua folder mipmap dengan folder yang ada di ekstrakan kita tadi biasnya berada di AppIcons/android/. 

kedua untuk ios 

mari kita pergi ke directory ios/Runner/Assets.xcassets/ maka kita akan menemukan folder bernama AppIcon.appiconset silahkan di replace dengan folder AppIcon.appiconset yang kita punya di AppIcons/ios/Assets.xcassets/

nah telah selesai. lebih simple kan. daripada harus menambahkan 1 library dan configurasi image lalu di generate. 

sekian terimakasih. 

maaf belum ada gambar, nanti saya update

