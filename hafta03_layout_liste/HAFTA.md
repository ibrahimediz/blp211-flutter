# Hafta 3 – Liste ve Yerleşim

## Hedefler
- `Scaffold`, `AppBar`, `body` ilişkisini pekiştirmek
- `Column` içinde çok eleman olunca neden taşma olduğunu görmek
- `ListView.builder` ile kaydırılabilir liste kurmak
- `Expanded` ile Row içinde uzun metni sığdırmak
- `Stack` ve `Positioned` ile üst üste bindirme yapmak
- Taşma hatasını (RenderFlex overflow) okuyup çözmek

## Projeyi hazırlama (bir kez)
1. VS Code'da **File > Open Folder** ile `hafta03_layout_liste` klasörünü aç.
2. Terminali aç: `Control+` ` (backtick) veya Terminal > New Terminal.
3. `flutter create .` yaz ve Return'e bas.
   - Beklenen: "All done!" yazar, `android`, `ios`, `web` klasörleri oluşur.
4. `flutter pub get` yaz.
   - Beklenen: "Got dependencies!" yazar.
5. `lib/main.dart` dosyasını aç, cihazı seç ve F5'e bas (bazı Macbook'larda `Fn+F5`).
   - Beklenen: Üstte "Ürünler" çubuğu, altında üç ürün satırı görünür. Her satırda ad ve fiyat yan yana, birbirine bitişik yazar.

## Görevler (main.dart içindeki TODO'lar)
Her görevden sonra `Cmd+S` ile kaydet ve ekranı kontrol et.

1. **Taşmayı gör.** `urunler` listesine 15 ürün daha ekle (mevcut üçünü kopyalayıp yapıştırabilirsin).
   - Beklenen: Ekranın altında sarı-siyah çizgili bir şerit ve "BOTTOM OVERFLOWED BY ... PIXELS" yazısı çıkar. Liste kaydırılamaz.
2. **Çözümü uygula.** `Column` yerine `ListView.builder` kullan.
   - Beklenen: Şerit kaybolur, liste parmakla/mouse ile kaydırılır.
3. **Satırı düzenle.** `ProductTile` içinde `Row`'a solda `Icon`, ortada ad ve açıklama (`Column`), sağda fiyat koy.
   - Beklenen: Solda ikon, ortada iki satır yazı, sağda fiyat görünür.
4. **Yatay taşmayı gör ve çöz.** Bir ürünün açıklamasını çok uzat.
   - Beklenen: Satırın sağ kenarında sarı-siyah dikey şerit çıkar.
   - `Column`'u `Expanded` ile sar.
   - Beklenen: Uzun açıklama alt satıra kayar, şerit kaybolur.
5. **Etiket ekle.** İkonu `Stack` içine al, üstüne `Positioned` ile küçük bir "Yeni" etiketi koy.
   - Beklenen: İkonun köşesinde "Yeni" yazan küçük kutu görünür.

Önce kendin dene, takılınca AI aracından yardım iste.

## Prompt örnekleri
1. "Flutter'da ListView ile ListView.builder arasındaki fark nedir? Hangisini ne zaman kullanmalıyım?"
2. "Aşağıdaki Row'da uzun metin taşıyor. Taşmayı Expanded ile çöz, yalnızca değişen kısmı göster: <kodu yapıştır>"
3. "RenderFlex overflowed hatasının nedeni nedir? Hata mesajı: <mesajı yapıştır>"

## Kod okuma soruları
- `ListView.builder` içindeki `itemCount` ve `itemBuilder` ne işe yarar?
- `Expanded` yalnızca hangi widget'ların içinde çalışır?
- `Stack` içindeki ilk çocuk ile son çocuk arasında hangisi üstte görünür?

## Ödev
Listeye kendi tasarladığın bir ürün/kitap/film listesi koy (en az 8 eleman). Her satırda ikon, başlık, açıklama ve sağda bir bilgi olsun. En az bir satırda uzun metin taşması yaşayıp `Expanded` ile çöz.
