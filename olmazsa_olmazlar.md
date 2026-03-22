# Etkileşimli Matematik Formülleri Uygulaması - Proje Anayasası (olmazsa_olmazlar.md)

## 1. Proje Özeti ve Hedef Kitle
Bu proje, Milli Eğitim Bakanlığı (MEB) müfredatına uygun olarak 5, 6, 7 ve 8. sınıf öğrencileri (Ortaokul) için tasarlanmış dinamik ve "etkileşimli" bir matematik formülleri uygulamasıdır. Temel pedagojik yaklaşımımız **"yaparak ve görerek öğrenme"** ilkesine dayanır. Öğrenciler statik formülleri ezberlemek yerine, formülün içindeki değişkenlerle (örneğin yarıçap, yükseklik, kenar uzunluğu) oynayarak sonucun ve geometrik şekillerin nasıl değiştiğini anlık olarak gözlemleyeceklerdir. Uygulama tamamen **çevrimdışı (offline-first)** çalışacak şekilde tasarlanmıştır, böylece internet bağlantısı olmayan ortamlarda bile eğitime kesintisiz erişim sağlanır.

## 2. Sınıf Bazlı Formül Dağılımı (MEB Müfredatı Referanslı)
Uygulamada yer alacak formüller ve konular, sınıf seviyelerine göre aşağıdaki gibi gruplandırılacaktır:

*   **5. Sınıf: Temel Geometri ve Ölçme**
    *   Dikdörtgenin Çevresi ve Alanı
    *   Kare, Çevre ve Alan İlişkisi
    *   Zaman, Uzunluk ve Kütle Ölçüleri Temel Dönüşümleri
*   **6. Sınıf: Alan Ölçme ve Çarpanlar**
    *   Paralelkenarın Alanı
    *   Üçgenin Alanı
    *   Çemberin Çevresi ve Pi Sayısı ($C = 2\pi r$)
    *   Prizmaların Hacmi (Dikdörtgenler Prizması)
*   **7. Sınıf: Çokgenler, Çember ve Oran-Orantı**
    *   Düzgün Çokgenlerin Çevresi ve İç Açıları
    *   Çemberin ve Çember Parçasının Uzunluğu
    *   Dairenin ve Daire Diliminin Alanı ($A = \pi r^2$)
    *   Yüzdeler ve Oran-Orantı Problemleri (Basit Faiz/İndirim vb.)
*   **8. Sınıf: Üslü/Köklü Sayılar ve Dik Üçgen**
    *   Pisagor Bağıntısı ($a^2 + b^2 = c^2$)
    *   Silindirin Yüzey Alanı ve Hacmi
    *   Koni ve Kürenin Temel Özellikleri (Görsel ve Alan/Hacim Kavramları)
    *   Üslü İfadeler ve Kareköklü İfadelerde Kurallar

## 3. Etkileşim Modelleri
Öğrencinin formülü "hissetmesini" sağlayacak etkileşim mekanizmaları şunlardır:
*   **Dinamik Değişken Kontrolü (Slider ve Input):** Her formüldeki değişkenler (örneğin dik üçgendeki dik kenarlar) ekranın alt kısmındaki *Slider* (kaydırıcı) veya sayısal *Input* alanları aracılığıyla değiştirilebilecektir.
*   **Anlık Görsel Geri Bildirim:** Değişken güncellendiği anda, ekrandaki geometrik şekil (veya grafik) eşzamanlı olarak yeniden çizilecektir. Bu çizimler için Flutter'ın `CustomPaint` ve `Implicit Animations` (örn: `AnimatedContainer`, `TweenAnimationBuilder`) yapıları kullanılarak yumuşak geçişler (smooth transitions) sağlanacaktır.
*   **Adım Adım Hesaplama:** Değerler değiştikçe, formülün çözüm adımları (yerine koyma, işlem sırası ve nihai sonuç) ekranda anlık olarak güncellenerek öğrenciye gösterilecektir.

## 4. Teknik Mimari ve Kullanılacak Teknolojiler
Uygulama, yüksek performanslı ve modern standartlara uygun bir yapı ile geliştirilecektir:
*   **Çatı (Framework):** Flutter (Platform bağımsız mobil uygulama geliştirme).
*   **Mimari Yaklaşım:** "Offline-First" (Öncelikle çevrimdışı) prensibi.
*   **Durum Yönetimi (State Management):** **Riverpod**. (Modern, ölçeklenebilir, güvenli ve test edilebilir olması sebebiyle).
*   **Yerel Veritabanı:** **Isar Database**. (Yüksek hızlı okuma/yazma performansı, Flutter ekosistemi ile tam uyumu ve NoSQL yapısının esnekliği sayesinde verilerin, ilerlemelerin ve puanların lokalde tutulması için seçilmiştir).
*   **Matematiksel Tipografi (LaTeX):** Formüllerin, kesirlerin, köklü ve üslü ifadelerin kusursuz, kitabi bir düzende (profesyonel tipografiyle) gösterilmesi için `flutter_math_fork` vb. LaTeX render paketleri kullanılacaktır. (Bu paketler şekil çizimi için değil, sadece metin/formül görünümü için kullanılacaktır).

## 5. Veri Yapısı (JSON ve Model Tasarımı)
Uygulama içi içeriklerin yönetilebilir olması adına formül yapısı JSON tabanlı modellenecektir. Örnek bir veri modeli:

```json
{
  "id": "pythagoras_01",
  "title": "Pisagor Bağıntısı",
  "gradeLevel": 8,
  "category": "Geometri",
  "latexFormula": "a^2 + b^2 = c^2",
  "description": "Bir dik üçgende dik kenarların uzunluklarının kareleri toplamı, hipotenüsün uzunluğunun karesine eşittir.",
  "variables": [
    { "key": "a", "name": "1. Dik Kenar", "min": 1, "max": 20, "defaultValue": 3 },
    { "key": "b", "name": "2. Dik Kenar", "min": 1, "max": 20, "defaultValue": 4 }
  ],
  "quizzes": [
    {
      "id": "q_pyth_1",
      "question": "Dik kenarları 5 cm ve 12 cm olan bir dik üçgenin hipotenüsü kaç cm'dir?",
      "options": ["10", "13", "15", "17"],
      "correctOptionIndex": 1
    }
  ]
}
```
*Not: Bu JSON veri yapısı, Isar tarafında strongly-typed modellere (Collections) dönüştürülerek kullanılacaktır.*

## 6. UI/UX Kuralları ve Oyunlaştırma
Kullanıcı deneyimi, öğrencilerin sıkılmadan vakit geçirebilecekleri, teşvik edici bir yapıda tasarlanacaktır.
*   **Renk Temaları ve Modlar:**
    *   Açık (Light) ve Koyu (Dark) mod desteği varsayılan olarak sunulacaktır.
    *   Her sınıf seviyesi için farklı bir vurgu rengi (accent color) kullanılacaktır (Örn: 5. sınıf için yeşil tonları, 8. sınıf için mavi tonları).
*   **Oyunlaştırma (Gamification) - Yerel MVP Sürümü:**
    *   **Rozet Sistemi:** Kullanıcının etkileşimleri Isar db üzerinde tutulacak ve belirli eşikler aşıldığında rozetler açılacaktır. Örn: *Kaşif Rozeti* (5 farklı formül inceleme), *Pisagor'un Çırağı* (Dik üçgen formülünde 10 farklı kombinasyon deneme).
    *   **Mini Quizler:** Her formül/konu detay sayfasında bir "Beni Test Et" butonu yer alacaktır. Bu buton, formülü pratiğe dökmeyi sağlayan 3 soruluk bir mini quiz başlatacaktır. Doğru cevaplar uygulamanın yerel puan (XP) sistemine katkı sağlayacaktır. (Sunucu veya liderlik tablosu olmayıp tamamen offline tutulacaktır).

## 7. Kapsam Dışı (Out of Scope - MVP İçin)
İlk sürümde (MVP) projeyi karmaşıklaştırmamak ve hızlı çıkış yapabilmek adına şu özellikler kapsam dışı bırakılmıştır:
*   Kullanıcı girişi (Login/Register) ve bulut senkronizasyonu (Cloud Sync).
*   Çevrimiçi liderlik tabloları (Global Leaderboards).
*   Öğretmen paneli veya ödev atama sistemleri.
*   Serbest el çizim tahtası veya karmaşık geometri araçları (Geogebra benzeri yapılar).

---
*Bu belge projenin gelişim sürecinde temel referans noktası kabul edilecek ve yeni modüller eklenirken bu prensiplere sadık kalınacaktır.*
