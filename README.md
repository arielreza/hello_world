# hello_world

A new Flutter project.

![Screenshot hello_world](images/01.png)

---

## Praktikum 4: Menerapkan Widget Dasar

### Langkah 1: Text Widget
Saya membuat folder baru `basic_widgets` di dalam folder `lib`, lalu menambahkan file `text_widget.dart` dengan isi berikut:

```dart
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Muhammad Mahdi Arielreza Hafiz, sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }
}
```
Perubahan pada main.dart

Saya mengimpor file text_widget.dart ke dalam main.dart:
```import 'basic_widgets/text_widget.dart';```

Kemudian pada bagian widget Column, teks bawaan diganti menjadi widget baru:
```children: <Widget>[
  const MyTextWidget(), // teks custom
  Text(
    '$_counter',
    style: Theme.of(context).textTheme.headlineMedium,
  ),
],```

Hasil

Setelah dijalankan, aplikasi menampilkan teks
"Nama saya Muhammad Mahdi Arielreza Hafiz, sedang belajar Pemrograman Mobile" berwarna merah di atas counter.

![Screenshot hello_world](images/02.png)

Langkah 2: Image Widget

Saya menambahkan file baru image_widget.dart di dalam folder basic_widgets dengan isi:```import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/polinema_logo.png"),
    );
  }
}
```
Perubahan pada pubspec.yaml

Menambahkan konfigurasi asset agar Flutter bisa memuat gambar:```flutter:
  assets:
    - assets/polinema_logo.png
  uses-material-design: true
```
Perubahan pada main.dart

Saya mengimpor file image_widget.dart ke dalam main.dart:```import 'package:hello_world/basic_widgets/image_widget.dart'; ```

Kemudian pada bagian widget Column, saya menambahkan widget gambar di atas counter:```children: <Widget>[
  const MyImageWidget(), // menampilkan logo Polinema
  Text(
    '$_counter',
    style: Theme.of(context).textTheme.headlineMedium,
  ),
],
```
Hasil

Setelah dijalankan, aplikasi menampilkan logo Polinema di atas counter angka.
![Screenshot hello_world](images/03.png)