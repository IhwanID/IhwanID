---
date: 2019-07-28
title: 'Android Jetpack untuk pemula'
template: post
thumbnail: '../thumbnails/kotlin.png'
slug: android-jetpack
categories:
  - Mobile
tags:
  - android
---

Untuk Para Android Native Developer tentunya sudah tidak asing dengan kata Android Jetpack. Setiap kali kita mengunjungi halaman resmi [Android Developer](https://developer.android.com/) pasti ada tulisan Jetpack. Nah maka dari itu tidak ada salahnya jika aku menjelaskan kembali apa itu Android Jetpack dan penggunaan-nya berdasarkan pengalaman pribadiku yang sudah menerapkan kumpulan library ini dalam beberapa project kantor maupun project pribadiku. 

Okey langsung saja, apa itu Android Jetpack? Singkatnya kita bisa sebut bahwa Android Jetpack adalah kumpulan library yang dapat mempermudah pengembangan aplikasi di Android dengan standar Google yaitu Android Architecture Component. Didalam Android jetpack terdiri dari berbagai macam bagian, Ada Foundation, Architecture, Behavior dan  UI. Kita bisa mengadaptasikan beberapa komponen saja sesuai kebutuhan kita, masing masing dari komponen tersebut dibuat untuk bisa bekerja bersama dengan baik. 

![Jetpack Donut](../images/jetpack-donut.png)

Dengan menggunakan Jetpack kita bisa meng-eliminasi boilerplate kode ditambah lagi jika kita menggunakan kotlin sebagai bahasa pemrograman untuk Android maka akan semakin rapih kode-nya dan mudah untuk di-maintain. Tidak lupa kita juga akan mendapatkan benedit seperti best practices dalam pengembangan aplikasi android dimana tugas yang biasanya sangat sulit untuk dibuat seperti membuat database local akan lebih mudah jika kita menggunakan library dari jetpack. Berikut beberapa library yang ada dimasing-masing komponen : 

1. Foundation
- AppCompat
- Android KTX
- Multidex
- Test

2. Architecture
- ViewModel
- LiveData
- Lifecycle
- Room
- Data Binding
- Paging
- Navigation
- WorkManager

3. Behavior
- Download Manager
- Media & Playback
- Permission
- Notifications
- Sharing
- Slices

4. UI
- Animation & Transitions
- Auto, Tv & Wear
- Emoji
- Fragment
- Layout
- Palette

Tentunya dengan menggunakan Jetpack kita sudah difasilitasi "Modern App Architecture", kita akan menggunakan design pattern MVVM yaitu Model View ViewModel dimana MVVM adalah pattern yang direkomendasikan dari Google secara langsung. MVVM adalah pattern favorite saya saat ini, semoga kamu juga. 

Jetpack terdiri dari beberapa package [AndroidX](https://developer.android.com/jetpack/androidx). AndroidX sendiri itu apa? singkatnya ini adalah versi baru dari Android Support, dimana pe-nama-an (namespace) untuk library nya jadi lebih rapi, dari android.support.* menjadi androidx.* . 

Nah itu dia sedikit pembukaan tentang Android Jetpack. Di Article Selanjutnya kita akan bahas beberapa library jetpack yang bisa membantu project kita menjadi lebih baik lagi. Terimakasih sudah membaca :).
