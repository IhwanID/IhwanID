---
date: 2019-05-30
title: 'Don't hardcode value - Android Studio Tips'
template: post
thumbnail: '../thumbnails/writing.png'
slug: dont-hardcode-value
categories:
  - Android
tags:
  - android
  - android studio
  - android tips
---

Sebagai Android Developer tentu penulis memiliki sedikit pengalaman dalam menggunakan IDE tercinta kita, yaitu Android Studio. tapi tidak ada salahnya jika penulis berbagi sedikit tips yang mungkin saja sudah teman-teman ketahui. 

Mungkin kita terbiasa langsung menulis value yang akan kita tampilkan ke user di dalam aplikasi kita seperti berikut.

```jsx
<Button
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="SUBMIT"
        android:textSize="20sp"/>
```

Tentu itu tidak akan mengakibatkan error di aplikasi kita, tapi alangkah baiknya jika kita menyimpan value text dan textSize tersebut didalam package res/value. value ini bisa berupa string, color, dimens dan juga style. Keuntungan yang bisa kita dapatkan jika menggunakan cara ini adalah kita bisa lebih mudah memantaince aplikasi kita dikemudian hari. contoh kita akan menambahkan bahasa baru untuk aplikasi kita, maka kita tinggal menyesuaikan dengan value defaultnya, selain itu teman teman bisa dengan mudah mengganti text yang sama hanya dengan mengubah satu value seperti contoh kasus tulisan di tombol OK ingin diubah menjadi YES, bayangkan jika teman teman menghardcode text tersebut dan ada 20 Tombol yang perlu di ubah tulisan nya. tentu ini akan sangat menghemat waktu teman teman.
