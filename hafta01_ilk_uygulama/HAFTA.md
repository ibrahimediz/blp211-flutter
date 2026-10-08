# Hafta 1 – İlk Uygulama

## Hedefler
- Flutter proje yapısını tanımak (`lib/main.dart`, `pubspec.yaml`)
- `main()`, `runApp()`, `MaterialApp`, `Scaffold`, `Text` ilişkisini anlamak
- Hot reload ve hot restart farkını görmek
- AI aracına iyi bir ilk prompt yazmak

## Başlangıç: projeyi hazırlama (bir kez)
Bu klasörde yalnızca `lib/` ve `pubspec.yaml` bulunur. Platform klasörlerini (android, ios, web) oluşturmak için:

1. VS Code'da `hafta01_ilk_uygulama` klasörünü aç (File > Open Folder).
2. Terminali aç (Terminal > New Terminal).
3. Şunu yaz: `flutter create .` ve Enter'a bas.
   - Beklenen: Terminalde dosya listesi akar ve "All done!" yazar. Klasörde `android`, `ios`, `web` klasörleri belirir.
4. Şunu yaz: `flutter pub get`.
   - Beklenen: "Got dependencies!" yazar.

## Çalıştırma (emülatör, telefon veya Chrome)
1. VS Code'un sağ alt köşesinde cihaz adına tıkla (ör. "Chrome" veya emülatör adı).
2. Açılan listeden çalıştırmak istediğin cihazı seç.
3. `lib/main.dart` dosyasını aç ve F5'e bas (veya Run > Start Debugging).
   - Beklenen: Birkaç saniye sonra ekranın ortasında "Merhaba Flutter" yazısı görünür.

## Hot reload deneyi
1. Uygulama çalışırken `main.dart` içinde `'Merhaba Flutter'` metnini `'Merhaba Dünya'` yap.
2. Dosyayı kaydet (Ctrl+S / Cmd+S).
   - Beklenen: Uygulama yeniden başlamadan ekrandaki yazı birkaç saniye içinde "Merhaba Dünya" olur.
3. Terminalde `r` tuşuna bas (hot reload) ve ardından `R` tuşuna bas (hot restart).
   - Beklenen: İkisinde de uygulama çalışmaya devam eder. Hot restart uygulamayı sıfırdan başlatır.

## Görevler (main.dart içindeki TODO'lar)
1. Metni kendi adınla değiştir.
2. AppBar ekle ("İlk Uygulamam").
3. Metnin stilini değiştir (boyut 28, kalın).
4. Metnin altına bir ikon ekle.

Önce kendin dene, sonra AI aracından yardım iste.

## Prompt yazma temelleri
İyi bir prompt dört şey içerir: **bağlam**, **ne istediğin**, **kısıt**, **beklenen çıktı**.

Zayıf prompt:
> Flutter ekranı yap.

Güçlü prompt:
> Ben Flutter öğrenen bir öğrenciyim. Aşağıdaki main.dart dosyasında Scaffold'a "İlk Uygulamam" başlıklı bir AppBar eklemek istiyorum. Yalnızca değişen kısmı göster ve ne yaptığını iki cümleyle açıkla. Başka paket ekleme.

Denenecek promptlar:
1. "Bu koddaki Scaffold, Center ve Text widget'larının ne işe yaradığını sırayla açıkla."
2. "Metnin altına bir yıldız ikonu eklemek için bu kodu nasıl değiştiririm? Column kullan."
3. "Bu kodda hata alıyorum: <hata mesajını yapıştır>. Nedenini açıkla ve düzeltilmiş kısmı göster."

## Kod okuma sorusu (derste)
`runApp(const MyApp());` satırı ne yapar? `MyApp` neden `StatelessWidget`? `build` metodu ne zaman çalışır?

## Ödev
Ekrana kendi adını, bölümünü ve bir ikonu yazan tek ekranlı bir uygulama yap. Çalıştığını kendi cihazında doğrula.
