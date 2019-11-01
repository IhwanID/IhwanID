---
path: "/flavor-app"
cover: "2018-10-17/finance.jpg"
date: "2019-11-01"
title: "Build & App with Firebase Auth Flutter"
tags: ['flutter', 'tutorial']
published: true
---
TEst (Artikel Sebelumnya)[https://codewith.ihwan.id] kita sudah berhasil melakukan setup firebase ke aplikasi flutter kita. 

Selanjutnya kita akan menggunakan salah satu service dari firebase yaitu firebase auth. sebelum kita menginstal library yang dibutuhkan ada baiknya kita mengaktifkan dulu feature Authentication melalui dashboard firebase. silahkan pilih menu Authentication -> Metode Login kemudian aktifkan email dan sandi. penampakan seperti gambar berikut :

gambar email dan sandi

jika sudah selesai silahkan pilih save dan kita kembali ke project flutter kita. kita akan menggunakan libary dari (firebase_auth)[https://pub.dev/packages/firebase_auth] dan silahkan tambahkan baris berikut didalam pubspec.yaml

```yaml
firebase_auth: ^0.14.0+5
```
dan jangan lupa untuk mengimport baris berikut di bagian paling atas page:
```dart
import 'package:firebase_auth/firebase_auth.dart';
```

sekarang di method build layout kita silahkan buat seperti 2 buah textfield dan 1 tombol untuk kebutuhan register. kode nya seperti berikut, boleh dimodifikasi dengan tujuan menjadi lebih baik :

```dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Login'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {

                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {

                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                MaterialButton(
                    minWidth: double.infinity,
                    height: 42.0,
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {

                    }),
              ],
            ),
          ),
        ));
  }
```

selanjutnya buatlah 2 String variable untu email dan password serta tambahkan 1 instance firebase auth instance. 

```dart
String email;
String password;
final _auth = FirebaseAuth.instance;
```

kemudian di dalam onChanged silahkan masukan value kedalam variable masing masing. 

contoh :

```dart
 onChanged: (value) {
    email = value;
    },
```

untuk onChanged bagian password pasti bisa kan ya :). 

okey selanjutnya dibagian 

```dart
                    onPressed: () async {
                      print("$email | $password");
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);
                        if (newUser != null) {
                          println('success login');
                        }
                      } catch (e) {
                        print(e);
                      }
                    }
```

Nah silahkan di run ulang aplikasi nya setelah itu coba aplikasi nya. semoga berhasil. 