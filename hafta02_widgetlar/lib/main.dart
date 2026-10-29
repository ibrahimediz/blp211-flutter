import 'package:flutter/material.dart';

// HAFTA 2 - BAŞLANGIÇ ŞABLONU: Profil Kartı
// Bu dosya çalışır durumdadır. Derste ProfileCard widget'ını geliştireceğiz.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLP211 Hafta 2',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Kartı')),
      body: const Center(
        // TODO 5: Kartı iki kez göster (Column içinde, aralarında SizedBox).
        child: ProfileCard(
          name: 'Ad Soyad',
          title: 'Öğrenci',
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.name, required this.title});

  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO 1: Yazıyı Container ile sar, padding 16 ve açık mavi arka plan ver.
    // TODO 2: Köşeleri yuvarla (BoxDecoration + borderRadius).
    // TODO 3: name ve title'ı Column ile alt alta yaz.
    // TODO 4: Soluna bir Icon ekle (Row kullan).
    return Text(name);
  }
}
