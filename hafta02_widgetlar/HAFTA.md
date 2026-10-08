# Hafta 2 – Widget'lar ve Profil Kartı

## Hedefler
- `StatelessWidget` yazmak ve `build` metodunu anlamak
- `Container`, `Padding`, `SizedBox`, `Icon`, `Text` kullanmak
- `Row` ve `Column` ile yatay/dikey yerleşim kurmak
- Kendi widget'ını parametreyle çağırmak (`name`, `title`)

## Projeyi hazırlama (bir kez)
1. VS Code'da `hafta02_widgetlar` klasörünü aç (File > Open Folder).
2. Terminali aç (Terminal > New Terminal).
3. `flutter create .` yaz ve Enter'a bas.
   - Beklenen: "All done!" yazar, `android`, `ios`, `web` klasörleri oluşur.
4. `flutter pub get` yaz.
   - Beklenen: "Got dependencies!" yazar.
5. `lib/main.dart` dosyasını aç, cihazı seç ve F5'e bas.
   - Beklenen: Üstte "Profil Kartı" başlıklı bir çubuk, ortada "Ad Soyad" yazısı görünür.

## Görevler (ProfileCard içindeki TODO'lar)
Her görevden sonra dosyayı kaydet ve ekranı kontrol et.

1. Yazıyı `Container` ile sar, padding 16 ve açık mavi arka plan ver.
   - Beklenen: Yazının etrafında renkli bir kutu görünür.
2. Kutunun köşelerini yuvarla (`BoxDecoration` + `borderRadius`).
   - Beklenen: Kutunun köşeleri yuvarlak olur.
3. `name` ve `title`'ı `Column` ile alt alta yaz.
   - Beklenen: İki satır görünür, ad üstte, unvan altta.
4. Soluna bir `Icon` ekle (`Row` kullan).
   - Beklenen: Solda kişi ikonu, sağında iki satır yazı görünür.
5. `ProfilePage` içinde kartı iki kez göster (`Column` ve `SizedBox`).
   - Beklenen: İki kart alt alta, aralarında boşlukla görünür.

Önce kendin dene, takılınca AI aracından yardım iste.

## Prompt örnekleri
1. "Flutter'da Container ile Padding arasındaki fark nedir? Kısa bir örnekle göster."
2. "Aşağıdaki ProfileCard widget'ında Row içine Icon ve Column koymak istiyorum. Yalnızca build metodunu değiştir ve ne yaptığını iki cümleyle açıkla: <kodu yapıştır>"
3. "Bu hatayı alıyorum: <hata>. Nedenini açıkla, düzeltilmiş kısmı göster."

## Kod okuma soruları
- `required this.name` ne anlama gelir?
- `const ProfileCard(...)` yazarken `const` ne işe yarar?
- `Row` içinde `Column` kullanırsak ana eksen ve çapraz eksen neler olur?

## Ödev
Kartı kendi bilgilerinle doldur (ad, bölüm, ikon). Bir kart daha ekle: farklı renkte ve farklı ikonla. Cihazında çalıştığını doğrula.
