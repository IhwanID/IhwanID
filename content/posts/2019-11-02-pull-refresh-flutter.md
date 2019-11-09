---
path: "/pull-refresh-flutter"
cover: "thumbnails/flutter.png"
date: "2019-11-02"
title: "pull refresh pada flutter?"
tags: ['flutter']
published: true
---
Terkadang kita memerlukan keadaan dimana screen kita harus memuat ulang data demi mendapatkan data terbaru. nah widget RefreshIndicator bisa menjadi jawaban nya. berikuta penjelasan lebih lanjut tentang widget tersebut. 

okey pertama buatlah sebuah Scaffold berisi appbar dan body yang berisi RefreshIndicator serta tambahkan property key, onRefresh dan child pada widget RefreshIndicator tersebut. hasilnya seperti berikut

```dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Refresh'),
        ),
        body: RefreshIndicator(
            key: _refreshIndicatorKey,
            onRefresh: refresh,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: <Widget>[
                  Image.network('$url'),
                  Center(child: Text('Source : $url'))
                ],
              ),
            )));
  }
```

tentu kita perlu membuat sebuah variable url dan menginisiasi variable tersebut di initstate serta sebuah variable _refreshIndicatorKey, berikut kode nya :

```dart
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  String url;

  @override
  void initState() {
    super.initState();
    url = 'https://source.unsplash.com/random';
  }
```

beritkutnya buatlah fungsi refresh seperti berikut yang selalu membuat url dengan akhiran angka random 
```dart
  Future<void> refresh() async {
    int randomNumber = Random().nextInt(20);
    setState(() {
      url = 'https://source.unsplash.com/collection/$randomNumber';
    });
    return;
  }
```

nah aplikasinya akan jadi seperti berikut, setiap kita refresh maka gambar akan berubah

image refresh

kalau teman teman bingung mengapa kita me-return kosong pada fungsi void karena kita sudah menggunakan asycn. rumus nya

```dart
import 'dart:async';

void foo1() {
  return;
}

Null foo2() {
  return;
}

Future<void> foo3() async {
  return; // warning • Missing return value after 'return' at test.dart:12:3 • return_without_value                                                                                                                                                            
}

Future<Null> foo4() async {
  return;
}

void main() { }
```

