import 'package:flutter/material.dart';

// HAFTA 1 - BAŞLANGIÇ ŞABLONU
// Bu dosya çalışır durumdadır. Derste canlı olarak değiştireceğiz.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLP211 Hafta 1',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const Scaffold(
        body: Center(
          // TODO 1: Bu metni kendi adınla değiştir.
          child: Text('Merhaba Flutter'),
        ),
      ),
    );
  }
}

// TODO 2: Scaffold'a bir AppBar ekle (başlık: "İlk Uygulamam").
// TODO 3: Text'in stilini değiştir (boyut 28, kalın).
// TODO 4: Text'in altına bir Icon ekle (Column kullanman gerekecek).
