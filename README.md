# 📱 Hepsiburada Clone App – Flutter  

Bu proje, **Softito Bitirme Ödevi** kapsamında Flutter ile geliştirilmiş bir **Hepsiburada Clone E-Ticaret Uygulaması**dır.  
Amaç, Flutter kullanarak modern bir e-ticaret uygulamasının temel işleyişini öğrenmek ve mobil uygulama geliştirme deneyimi kazanmaktır.  

---

## 🚀 Özellikler  
- 🏠 Ana sayfa ürün listesi  
- 🔍 Kategori bazlı ürün listeleri  
- 📦 Ürün detay sayfası + benzer ürünler  
- 🛒 Sepet ekranı (ürün ekleme/çıkarma simülasyonu)  
- ❤️ Favoriler sayfası  
- 📑 Listelerim & Linklerim sayfası (TabBar ile)  
- 👤 Profil ekranı  
- 🔑 Login & Register sayfası (TabBar ile)  
- 📌 Alt navigasyon çubuğu (BottomNavigationBar)  

---

## 🛠 Kullanılan Teknolojiler  
- **Flutter** & **Dart**  
- **Material Design Widgets**  
- **TabBar** ve **BottomNavigationBar** kullanımı  

---

## 📷 Ekran Görüntüleri  


---[odev.zip](https://github.com/user-attachments/files/21811340/odev.zip)


## 📦 Kurulum  

Projeyi kendi bilgisayarınızda çalıştırmak için:  

```bash
git clone https://github.com/YusufBerkez/hepsiburada_clone_app.git
cd e_trade_application
flutter pub get
flutter run
```

---

## 📂 Proje Yapısı  

```plaintext
e_trade_application/
├── lib/
│   ├── data/                  # Sabit ürün listeleri ve veri yönetimi
│   │   └── data_helper.dart
│   ├── model/                 # Veri modelleri
│   │   └── product_card.dart
│   ├── views/                 # Tüm ekranlar
│   │   ├── categories/
│   │   │   └── category_page.dart
│   │   ├── detailspage/
│   │   │   ├── details_page.dart
│   │   │   └── details_page_bottom_products.dart
│   │   ├── homepage/
│   │   │   ├── home_page.dart
│   │   │   └── home_page_card.dart
│   │   ├── listpage/          # TabBar ile bağlı sayfalar
│   │   │   ├── list_page.dart
│   │   │   ├── myfavorite_page.dart
│   │   │   ├── mylinks_page.dart
│   │   │   └── mylist_page.dart
│   │   ├── profile/
│   │   │   └── profile_page.dart
│   │   ├── sepet/
│   │   │   └── shopping_page.dart
│   │   └── login_page.dart     # Login & Register (TabBar ile)
│   ├── bottomnavbar.dart       # Alt navigasyon çubuğu
│   └── main.dart
├── assets/                     # Görseller, ikonlar (varsa)
├── pubspec.yaml                 # Bağımlılıklar
```

---

## 🎯 Amaç  
Bu proje, **Flutter ile e-ticaret uygulaması mimarisini öğrenmek**, farklı ekran geçişlerini (BottomNavigationBar, TabBar) uygulamak ve modern UI geliştirme pratiği kazanmak için hazırlanmıştır.  

---

## 👨‍💻 Geliştirici  
- **Yusuf Berke Zengin** – [GitHub Profilim](https://github.com/YusufBerkez)  
