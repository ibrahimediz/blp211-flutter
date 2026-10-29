# Hafta 4 – State: StatefulWidget ve setState

## Hedefler
- Neden bazı değişikliklerin ekrana yansımadığını anlamak
- `StatelessWidget` ile `StatefulWidget` farkını bilmek
- `setState` ile ekranı güncellemek
- `TextField` ve `TextEditingController` ile kullanıcıdan metin almak
- Basit bir yapılacaklar listesi kurmak

## Projeyi hazırlama (bir kez)
1. VS Code'da **File > Open Folder** ile `hafta04_state` klasörünü aç.
2. Terminali aç: `Control+` ` (backtick) veya Terminal > New Terminal.
3. `flutter create .` yaz ve Return'e bas.
   - Beklenen: "All done!" yazar, `android`, `ios`, `web` klasörleri oluşur.
4. `flutter pub get` yaz.
   - Beklenen: "Got dependencies!" yazar.
5. `lib/main.dart` dosyasını aç, cihazı seç ve F5'e bas (bazı Macbook'larda `Fn+F5`).
   - Beklenen: Üstte "Sayaç" çubuğu, ortada büyük bir `0` ve altında "Artır" düğmesi görünür.

## Görevler (main.dart içindeki TODO'lar)
Her görevden sonra `Cmd+S` ile kaydet ve ekranı kontrol et.

1. **Hatayı gör.** "Artır" düğmesine 5 kez bas.
   - Beklenen: Ekrandaki sayı `0` olarak kalır. Terminalde `sayaç: 1`, `sayaç: 2` ... satırları görünür. Yani değer artıyor ama ekran güncellenmiyor.
2. **StatefulWidget'a dönüştür.** `class CounterPage` satırına tıkla, `Cmd+.` tuşlarına bas ve **Convert to StatefulWidget** seçeneğini seç.
   - Beklenen: Kod iki sınıfa ayrılır (`CounterPage` ve `_CounterPageState`).
3. **Değişkeni taşı ve setState ekle.**
   - Dosyanın en üstündeki `int sayac = 0;` satırını sil.
   - Aynı satırı `_CounterPageState` sınıfının içine, `build`'in hemen üstüne yaz.
   - Düğmenin içindeki `sayac++;` satırını şununla değiştir: `setState(() { sayac++; });`
   - Beklenen: "Artır"a basınca ekrandaki sayı da artar. (Ekran değişmezse Hot Restart yap.)
4. **Sıfırla düğmesi ekle.** Artır düğmesinin altına bir `ElevatedButton` daha koy; basınca `sayac = 0` olsun (`setState` içinde).
   - Beklenen: Sıfırla'ya basınca sayı `0` olur.
5. **Metin kutusu ekle.** `State` sınıfına `final _controller = TextEditingController();` yaz. Ekrana `TextField(controller: _controller)` ekle.
   - Beklenen: Kutuya yazı yazabilirsin.
6. **Görev listesi kur.** `List<String> gorevler = [];` tanımla. "Ekle" düğmesine basınca `_controller.text` değerini listeye ekle (`setState` içinde), kutuyu temizle (`_controller.clear()`), altta `ListView.builder` ile göster (`Expanded` ile sar).
   - Beklenen: Her eklediğin görev kutunun altında satır olarak görünür.

Önce kendin dene, takılınca AI aracından yardım iste.

## Prompt örnekleri
1. "Flutter'da StatelessWidget ve StatefulWidget arasındaki fark nedir? Bir sayaç örneğiyle kısaca anlat."
2. "Butona basınca değişken artıyor ama ekran güncellenmiyor. Nedeni ne? Kodum: <kodu yapıştır>"
3. "Aşağıdaki kodda TextField'a yazılan metni listeye ekleyen bir buton ekle. Yalnızca değişen kısmı göster: <kodu yapıştır>"

## Kod okuma soruları
- `setState(() { sayac++; })` çalıştığında Flutter ne yapar?
- `sayac++` yazılıp `setState` unutulursa neden ekran değişmez?
- `TextEditingController` ne işe yarar, neden `State` sınıfında tutulur?

## Ödev
Yapılacaklar listesine bir "Sil" özelliği ekle: bir görevin yanındaki ikona basınca görev listeden kalksın. Uygulamayı kendi cihazında çalıştırıp doğrula.
