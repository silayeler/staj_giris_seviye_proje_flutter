# 📱 Staj Giriş Seviyesi Flutter Projesi

Bu Flutter projesi, basit bir **kayıt formu** üzerinden kullanıcıdan ad, e-posta ve telefon bilgilerini alır. Girilen bilgiler doğrulandıktan sonra ikinci bir sayfada gösterilir.

## 🚀 Özellikler

- 📄 **Kayıt Formu** ile kullanıcıdan bilgi alma
- ✅ **Form Doğrulama:** Geçerli e-posta kontrolü, telefonun en az 10 hane olması
- 🌐 **Türkçe Dil Desteği** (`flutter_localizations`)
- 🎨 Modern ve sade tasarım (Material Design)
- 🔁 Sayfalar arası geçiş ve veri iletimi

---

## 💡 Kullanılan Önemli Flutter Bileşenleri

| Widget | Açıklama |
|--------|----------|
| `MaterialApp` | Uygulamanın kök widget'ıdır. Tema, yönlendirme ve dil desteği burada tanımlanır. |
| `StatelessWidget` | Sabit durumlu ekranlar için kullanılır. Bu projede `MyApp` sınıfı bu yapıda. |
| `Scaffold` | Sayfanın temel düzenini oluşturur (AppBar, Body, FAB). |
| `AppBar` | Üstteki başlık çubuğu. Sayfa başlığı ve geri dönme ikonu burada. |
| `TextFormField` | Kullanıcıdan metin (ad, e-posta, telefon) girişi alınır. |
| `InputDecoration` | TextFormField içindeki ikon, hintText ve hata mesajı gibi görsellikleri kontrol eder. |
| `Text` | Yazı gösterimi için kullanılır (örneğin: başlıklar, etiketler). |
| `ElevatedButton` | Kaydol butonudur. Basıldığında formu doğrular ve diğer sayfaya yönlendirir. |
| `Form` & `GlobalKey<FormState>` | Form alanlarını ve doğrulama işlemlerini yönetir. |
| `Navigator.push` | Yeni sayfaya veriyle birlikte geçiş sağlar. |
| `InputFormatter` | Telefon numarası girişinde sadece rakam girmeyi sağlar. |
| `flutter_localizations` paketi | Uygulamayı Türkçe diline uyumlu hale getirir. |

---


---

## 🧑‍💻 Kurulum Adımları

```bash
git clone https://github.com/silayeler/staj_giris_seviye_proje_flutter.git
cd staj_giris_seviye_proje_flutter
flutter pub get
flutter run
