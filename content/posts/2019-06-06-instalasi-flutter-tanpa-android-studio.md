---
date: 2019-06-06
title: 'Instalasi Flutter Tanpa Android Studio'
template: post
thumbnail: '../thumbnails/kotlin.png'
slug: instal-flutter-tanpa-android-studio
categories:
  - Mobile
tags:
  - flutter
---

Hai semuanya! Semoga sehat selalu.
Kali ini saya ingin berbagi pengalaman seputar instalasi flutter, tentunya dengan cara yang berbeda dari biasanya.

Untuk teman-teman yang belum tahu apa itu flutter, singkatnya :

Flutter adalah sebuah framework aplikasi mobil sumber terbuka yang diciptakan oleh Google. Flutter digunakan dalam pengembangan aplikasi untuk sistem operasi Android dan iOS.
Umumnya cara menginstal flutter dengan step -step berikut

Download SDK Flutter
Instalasi Android Studio
Download plugin dart & flutter untuk VsCode atau Android Studio
Buat Project dan Jalankan hello world
Sekilas memang terlihat mudah, namun akan sangat menjadi kendala untuk teman teman yang memiliki storage terbatas (#TimSSD120GB) ataupun spesifikasi laptop yang kurang mumpuni untuk membuka IDE Android Studio.

Maka saya dengan penuh percaya diri menawarkan alternatif yang membutuhkan effort sedikit lebih banyak namun bisa menghemat storage serta menjaga emosi teman-teman dalam menghadapi aplikasi not responding.

Jawabannya adalah Instalasi Flutter + Android SDK Only. Ya benar, teman teman tidak memerlukan Android Studio dan tidak perlu menginstallnya.

Berikut langkah-langkahnya.

1.Download SDK Flutter. Silahkan kunjungi halaman download disini, dan sesuaikan dengan sistem operasi teman teman. saat tulisan ini dibuat flutter dalam versi 1.2.1 Stable

2. Selanjutnya silahkan download Command Line Tools Only di halaman ini, penampakan nya seperti berikut, silahkan download sesuai sistem operasi yang digunakan.

3. Silahkan Ekstrak kedua file tersebut dan letakkan di C:\Android untuk windows dan untuk sistem operasi yang lainnya bisa menaruh di root dan buat folder Android. Maka hasilnya akan ada 2 folder yaitu folder flutter dan tools.

4. Selanjutnya silahkan download OpenJDK di halaman ini, dan pilih yang berekstensi zip. sesuaikan dengan sistem operasi yang digunakan, saya menggunakan versi jdk8u212-b03 . setelah di download jangan lupa untuk mengekstrak ke folder Android yang sudah kita punya sebelumnya dan rename nama folder dari jdk8u212-b03 menjadi openjdk. totalnya sekarang kita punya 3 folder yaitu flutter, tools dan openjdk.

5. sampai sini kita harus menge-set Environment Variable dan Path, untuk windows silahkan buka command prompt dan ketikan command perbaris.

setx JAVA_HOME “C:\Android\openjdk”
setx ANDROID_HOME “C:\Android”
setx ANDROID_SDK_ROOT “C:\Android\tools”
setx path “%path%;”C:\Android\sdk;C:\Android\tools\bin;C:\Android\flutter\bin”
Untuk OS lainnya silahkan menyesuaikan.

6. Buka terminal (Command Prompt) di C:/Android/tools/bin lalu ketikan beberapa perintah berikut.

sdkmanager “system-images;android-28;default;x86_64”
sdkmanager “platform-tools”
sdkmanager “build-tools;28.0.3”
sdkmanager “platforms;android-28”
untuk pengguna Mac silahkan jalankan dengan single qoute (petik satu) seperti berikut.


sdkmanager ‘system-images;android-28;default;x86_64’

untuk SDK sendiri, Flutter selalu memerlukan Android SDK yang terbaru. jadi silahkan update sdk dengan command :

sdkmanager —-update
Edited : Saat tulisan ini dibuat, Flutter memerlukan SDK terbaru yaitu Pie (Android 28), namun saat ini sudah memerlukan SDK android-Q. silahkan teman-teman ganti command yang berisi android-28 menjadi android-Q.

Jangan lupa untuk menjalankan syntax accept licenses nya

flutter doctor --android-licenses
Dokumentasinya ada disini

7. Selanjutnya install Visual Studio Code dan ekstension flutter serta dart nya.

8. Jika semuanya sudah selesai silahkan buka terminal (Command Prompt) di Android/flutter atau untuk pengguna windows bisa double klik di C:\Android\Flutter\flutter_console.bat dan jalankan perintah flutter doctor, maka hasilnya seperti gambar berikut.

9. Step terakhir adalah buat project di VsCode dengan klik F1 dan mengetikan Flutter: New Project setelah project selesai di load, klik F5 untuk mendeploy ke android device teman-teman. dan hasilnya seperti gambar dibawah ini

Nah, itu dia cara yang agak ribet namun dapat membantu teman teman yang memiliki device dengan spek dan storage yang terbatas. sekian dulu sharing dari saya, apabila da kesulitan bisa japri lewat telegram saya. Terimakasih dan sampai jumpa .