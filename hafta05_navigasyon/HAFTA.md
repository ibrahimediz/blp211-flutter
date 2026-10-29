# Hafta 5 – Navigasyon: Sayfalar Arası Geçiş ve Veri

## Hedefler
- `Navigator.push` ile yeni sayfa açmak, `Navigator.pop` ile geri dönmek
- Bir sayfaya veri göndermek (constructor ile)
- Kapanan sayfadan sonuç geri almak (`await Navigator.push`)
- Liste → detay akışını kurmak

## Projeyi hazırlama (bir kez)
1. VS Code'da **File > Open Folder** ile `hafta05_navigasyon` klasörünü aç.
2. Terminali aç: `Control+` ` (backtick) veya Terminal > New Terminal.
3. `flutter create .` yaz ve Return'e bas.
   - Beklenen: "All done!" yazar, `android`, `ios`, `web` klasörleri oluşur.
4. `flutter pub get` yaz.
   - Beklenen: "Got dependencies!" yazar.
5. `lib/main.dart` dosyasını aç, cihazı seç ve F5'e bas (bazı Macbook'larda `Fn+F5`).
   - Beklenen: "Görevler" başlıklı bir çubuk ve altında 6 görev satırı görünür. Bir satıra dokununca ekran değişmez; yalnızca Debug Console'da "Dokunuldu: ..." yazar.

## Görevler (main.dart içindeki TODO'lar)
Her görevden sonra `Cmd+S` ile kaydet ve ekranı kontrol et.

1. **Yeni sayfa aç.** `onTap` içindeki `debugPrint` satırının altına `Navigator.push` ekle. Açılan sayfa şimdilik `Scaffold` içinde bir `Text('Detay sayfası')` göstersin.
   - Beklenen: Bir göreve dokununca yeni bir sayfa kayarak açılır. Üstte otomatik bir geri oku görünür; ona basınca listeye dönersin.
2. **Detay sayfasını widget yap ve veri gönder.** `TaskDetailPage` adlı bir `StatelessWidget` yaz. `baslik` ve `aciklama` değerlerini constructor ile alsın ve ekranda göstersin. `Navigator.push` içinde bu sayfayı çağır.
   - Beklenen: Hangi göreve dokunursan onun başlığı ve açıklaması detay sayfasında görünür.
3. **Geri dön düğmesi ekle.** Detay sayfasına bir `ElevatedButton` koy; basınca `Navigator.pop(context)` çalışsın.
   - Beklenen: Düğmeye basınca liste sayfasına dönersin.
4. **Sonucu geri döndür.** Detay sayfasına "Tamamlandı" düğmesi ekle; `Navigator.pop(context, 'tamam')` ile kapansın. Liste sayfasında `Navigator.push` çağrısını `await` ile bekle ve sonuç `'tamam'` ise `setState` içinde `tamamlananlar.add(index)` yap.
   - Beklenen: "Tamamlandı"ya basınca liste sayfasına dönersin ve o görevin solundaki ikon dolu onay işaretine döner.
5. **Yeni görev ekle.** Liste sayfasına `FloatingActionButton` ekle. Basınca `AddTaskPage` adlı yeni bir sayfa açılsın (içinde `TextField` ve "Kaydet" düğmesi). Kaydet'e basınca yazılan metin `Navigator.pop` ile geri dönsün ve listenin sonuna yeni görev olarak eklensin.
   - Beklenen: Sağ altta "+" düğmesi görünür. Yazıp kaydedince yeni görev listenin sonunda belirir.

Önce kendin dene, takılınca AI aracından yardım iste.

## Prompt örnekleri
1. "Flutter'da Navigator.push ve Navigator.pop ne işe yarar? Bir liste ve detay sayfası örneğiyle kısaca anlat."
2. "Aşağıdaki kodda bir ListTile'a dokununca TaskDetailPage'i açmak istiyorum. Sayfaya başlık ve açıklama constructor ile gitsin. Yalnızca değişen kısmı göster ve ne yaptığını iki cümleyle açıkla: <kodu yapıştır>"
3. "Navigator.pop ile bir sonuç geri döndürüp liste sayfasında kullanmak istiyorum. await ne işe yarıyor? Basit anlat."

## Kod okuma soruları
- `Navigator.push(context, MaterialPageRoute(builder: (context) => ...))` satırında `MaterialPageRoute` ne işe yarar?
- `TaskDetailPage(baslik: ..., aciklama: ...)` ile veri nasıl sayfaya ulaşır?
- `final sonuc = await Navigator.push(...)` satırında `await` olmasaydı ne olurdu?

## Ödev
Detay sayfasına bir "Sil" düğmesi ekle: basınca sayfa `'sil'` sonucuyla kapansın ve görev listeden kalksın (`gorevler.removeAt(index)`). Uygulamayı kendi cihazında çalıştırıp doğrula.
