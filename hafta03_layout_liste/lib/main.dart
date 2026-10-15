import 'package:flutter/material.dart';

// HAFTA 3 - BAŞLANGIÇ ŞABLONU: Ürün Listesi
// Bu dosya çalışır durumdadır. Derste liste ve yerleşim konularını ekleyeceğiz.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLP211 Hafta 3',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ProductListPage(),
    );
  }
}

// Ürün verisi: ad, açıklama, fiyat
const List<Map<String, String>> urunler = [
  {
    'ad': 'Kablosuz Kulaklık',
    'aciklama': 'Gürültü engelleme, 30 saat pil',
    'fiyat': '1.250 TL',
  },
  {
    'ad': 'Akıllı Saat',
    'aciklama': 'Nabız ölçer, GPS, suya dayanıklı',
    'fiyat': '2.400 TL',
  },
  {
    'ad': 'Taşınabilir Hoparlör',
    'aciklama': 'Bluetooth, 12 saat çalışma süresi',
    'fiyat': '890 TL',
  },
];

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ürünler')),
      // TODO 2: Column yerine ListView.builder kullan.
      body: Column(
        children: [
          for (final urun in urunler)
            ProductTile(
              ad: urun['ad']!,
              aciklama: urun['aciklama']!,
              fiyat: urun['fiyat']!,
            ),
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.ad,
    required this.aciklama,
    required this.fiyat,
  });

  final String ad;
  final String aciklama;
  final String fiyat;

  @override
  Widget build(BuildContext context) {
    // TODO 3: Row içine solda bir Icon, ortada ad ve açıklama (Column),
    //         sağda fiyat gelecek şekilde düzenle.
    // TODO 4: Açıklamayı uzat, taşma hatasını gör, Expanded ile çöz.
    // TODO 5: Icon'un üstüne Stack ile "Yeni" etiketi ekle (Positioned).
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Text(ad),
          Text(fiyat),
        ],
      ),
    );
  }
}

// TODO 1: urunler listesine 15 ürün daha ekle ve ekranın altında oluşan
//         sarı-siyah taşma şeridini gözlemle.
