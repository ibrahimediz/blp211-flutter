import 'package:flutter/material.dart';

// HAFTA 4 - BAŞLANGIÇ ŞABLONU: State (Durum) ve Sayaç
// Bu dosya çalışır durumdadır, ama butona basınca ekran DEĞİŞMEZ.
// Nedenini derste birlikte bulacağız.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLP211 Hafta 4',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const CounterPage(),
    );
  }
}

// Sayaç değeri şimdilik sayfanın dışında tutuluyor.
int sayac = 0;

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sayaç')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$sayac', style: const TextStyle(fontSize: 48)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                sayac++;
                debugPrint('sayaç: $sayac');
              },
              child: const Text('Artır'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO 1: Butona birkaç kez bas. Ekranda sayı değişiyor mu? Debug Console'da (terminal) değişiyor mu?
// TODO 2: CounterPage'i StatefulWidget'a dönüştür.
// TODO 3: sayac değişkenini State sınıfının içine taşı ve setState kullan.
// TODO 4: Bir "Sıfırla" butonu ekle.
// TODO 5: TextField ve TextEditingController ile bir görev adı al.
// TODO 6: "Ekle" butonuna basınca görevi List<String> içine ekle
//         ve ListView.builder ile listele (hafta 3'teki gibi).
