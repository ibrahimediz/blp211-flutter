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
        child: Column(
          children: [
            ProfileCard(
              name: 'İBRAHİM EDİZ',
              title: 'GAZİ MYO',
            ),
            SizedBox(height: 16),
            ProfileCard(
              name: 'İBRAHİM EDİZ',
              title: 'GAZİ MYO',
            ),
          ],
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.person, size: 48),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(title),
            ],
          ),
        ],
      ),
    );
  }
}
