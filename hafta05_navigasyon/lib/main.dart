import 'package:flutter/material.dart';

// HAFTA 5 - BAŞLANGIÇ ŞABLONU: Görev Listesi ve Detay Sayfası
// Bu dosya çalışır durumdadır. Listedeki göreve dokununca şimdilik
// yalnızca Debug Console'a yazı düşer. Sayfa açmayı derste ekleyeceğiz.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLP211 Hafta 5',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const TaskListPage(),
    );
  }
}

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  // Görevler. Hafta 4'teki gibi State sınıfında tutulur.
  final List<Map<String, String>> gorevler = [
    {
      'baslik': 'Flutter sunumunu hazırla',
      'aciklama': 'Perşembe günü sunulacak 10 slayt hazırlanacak ve prova yapılacak.',
    },
    {
      'baslik': 'Market alışverişi',
      'aciklama': 'Süt, yumurta, ekmek ve meyve alınacak.',
    },
    {
      'baslik': 'Kütüphaneye kitap iade et',
      'aciklama': 'Teslim tarihi cuma. Gecikirse ceza yazılıyor.',
    },
    {
      'baslik': 'Spor yap',
      'aciklama': '30 dakika yürüyüş veya koşu.',
    },
    {
      'baslik': 'Arkadaşla proje toplantısı',
      'aciklama': 'Final proje fikrini konuşmak için kısa bir görüşme yap.',
    },
    {
      'baslik': 'AI günlüğünü güncelle',
      'aciklama': 'Bu hafta denediğin prompt ve sonucu günlüğe yaz.',
    },
  ];

  // Tamamlanan görevlerin sıra numaraları (TODO 4'te kullanılacak).
  final Set<int> tamamlananlar = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Görevler')),
      body: ListView.builder(
        itemCount: gorevler.length,
        itemBuilder: (context, index) {
          final gorev = gorevler[index];
          final bitti = tamamlananlar.contains(index);
          return ListTile(
            leading: Icon(
              bitti ? Icons.check_circle : Icons.radio_button_unchecked,
            ),
            title: Text(gorev['baslik']!),
            subtitle: Text(
              gorev['aciklama']!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // TODO 1: Burada Navigator.push ile yeni bir sayfa aç.
              debugPrint('Dokunuldu: ${gorev['baslik']}');
            },
          );
        },
      ),
    );
  }
}

// TODO 2: TaskDetailPage adlı bir StatelessWidget yaz.
//         Görevin başlığını ve açıklamasını constructor ile alsın.
// TODO 3: Detay sayfasına "Geri dön" düğmesi ekle (Navigator.pop).
// TODO 4: Detay sayfasına "Tamamlandı" düğmesi ekle. Basınca sayfa kapansın,
//         görev listede tamamlandı olarak işaretlensin (sonucu geri döndür).
// TODO 5: Liste sayfasına "+" düğmesi (FloatingActionButton) ekle.
//         Basınca yeni görev yazılan bir sayfa açılsın; kaydedilince
//         görev listenin sonuna eklensin.
