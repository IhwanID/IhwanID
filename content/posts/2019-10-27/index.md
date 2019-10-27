---
path: "/fetch-data-list-flutter"
cover: "../2018-10-16/speed.jpg"
date: "2018-10-27"
title: "Fetch Data List Flutter from API SpaceX"
tags: ['flutter', 'tutorial']
published: true
---

Dengan flutter kita bisa mempermudah pembuatan aplikasi Android dan iOS serta menghemat banyak waktu menulis boilerplate yang biasanya kita tulis sebagai ceremony dalam membuat aplikasi kita di native misal membuat adapter untuk recyclerview, membuat class lain lain sebelum menggunakan retrofit dan sebagainya. Maka dari itu tidak ada salahnya saya menyediakan tutorial membuat aplikasi list sederhana yang di ambil dari api SpaceX. kita akan banyak belajar hal baru disini, semangat. 

Pertama silahkan create project seperti biasa dan implementasikan beberapa library seperti berikut:

http: ^0.12.0+2
flutter_webview_plugin: ^0.3.8

http kita gunakan untuk fetch data dari API dan flutter_webview_plugin akan kita gunakan untuk membuka webview wikipedia. cukup dua library itu saja maka kita sudah bisa mulai mengoding nya. 

sekarang waktunya teman teman menghapus widget bawaan HomePage dan membuat sebuah statefull widget yang baru. 

buatlah 1 variable dan fungsi sebagai berikut : 

Future<List<Rockets>> listRockets;

Future<List<Rockets>> fetchAllRockets() async {
    final response = await http.get('https://api.spacexdata.com/v3/rockets');
    if (response.statusCode == 200) {
      return rocketsFromJson(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }

nah kalau kelas Rockets nya masih error karena kita belum membuat kelas tersebut, silahkan buat file baru di dalam lib bernama rockets.dart dan buat generate response dari https://api.spacexdata.com/v3/rockets, silahkan gunakan bantuan web berikut untuk mengkonversi dari json ke dart. setelah dapat hasilnya silahkan copy paste ke kelas rocket tadi. contoh hasil generate code nya seperti berikut

selanjutnya kita override method initState dan masukan nilai fungsi fetchAllRockets kedalam variable listRockets.

```
@override
  void initState() {
    super.initState();
    listRockets = fetchAllRockets();
  }
```


  di dalam method build silahkan buat Scaffold berisi appbar dan body. app bar berisi title saja dan body nya berisi FutureBuilder yang dibungkus dengan Container. 

  kode lengkap future builder sebagai berikut : 

  FutureBuilder<List<Rockets>>(
            future: listRockets,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Rockets> data = snapshot.data;
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.network(
                            '${data[index].flickrImages[0]}',
                            width: 60,
                          ),
                          title: Text('${data[index].rocketName}'),
                          subtitle: Text('${data[index].description}'),
                          trailing: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return WikipediaScreen(
                                      url: '${data[index].wikipedia}');
                                }));
                              },
                              child: Icon(Icons.arrow_right)),
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return Center(child: CircularProgressIndicator());
            }),





