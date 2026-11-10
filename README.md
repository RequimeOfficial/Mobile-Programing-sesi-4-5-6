# Mobile Programming – Tugas Sesi 4, 5 dan 6

Kumpulan hasil praktikum dan tugas mata kuliah **Mobile Programming** (Flutter & Dart).

- **Nama:** Ahmad Mofidur Robbiyal Aqla
- **NIM:** 2495114006
- **Kelas:** 5 - A

| Sesi | Topik | Isi | Folder |
|---|---|---|---|
| 4 | Instalasi Flutter & menjalankan versi web | Project `aplikasi_flutter_pertamaku` (Hello World, Column, Row, Stateless/Stateful, tugas `baris_kolom.dart`), hasil build web, screenshot, PDF tugas | [`sesi-4`](sesi-4) |
| 5 | Pengantar bahasa Dart | Hasil latihan dasar `latihan_dart1` (komentar, variabel, tipe data, operator, fungsi) dan tugas `tugas1_variabel` | [`sesi-5`](sesi-5) |
| 6 | Struktur kontrol dan fungsi | `hasil_praktikum` (if-else, for, for-in, forEach, while, do-while, break/continue, switch, fungsi) dan `tugas_latihan` (aplikasi Flutter 4 latihan + studi kasus) | [`sesi-6`](sesi-6) |

## Struktur repository

```
Mobile-Programing-sesi-4-5-6/
├── sesi-4/
│   ├── aplikasi_flutter_pertamaku/   # project Flutter (praktikum + tugas baris_kolom.dart)
│   ├── hasil_build_web/              # hasil `flutter build web`
│   ├── screenshots/                  # SS instalasi, build, dan aplikasi di browser
│   └── laporan/                      # PDF tugas Sesi 4 (SS + hasil build, nama & NIM)
├── sesi-5/
│   ├── hasil_praktikum/latihan_dart1/  # project Dart console: latihan dasar
│   └── tugas/tugas1_variabel/          # project Dart console: tugas
└── sesi-6/
    ├── hasil_praktikum/control_flow/       # project Dart console: struktur kontrol & fungsi
    ├── tugas_latihan/latihan_control_flow/ # project Flutter: latihan if/for/while/switch
    └── tugas_latihan/screenshots/
```

## Menjalankan

Kebutuhan: Flutter 3.x (sudah termasuk Dart SDK).

```bash
# Sesi 4 – Flutter web
cd sesi-4/aplikasi_flutter_pertamaku
flutter pub get
flutter run -d chrome

# Sesi 5 & Sesi 6 – program Dart console
cd sesi-5/tugas/tugas1_variabel
dart run

# Sesi 6 – aplikasi Flutter tugas latihan
cd sesi-6/tugas_latihan/latihan_control_flow
flutter run -d chrome
```

Setiap project juga memiliki pengujian yang dapat dijalankan dengan `dart test` (project Dart) atau `flutter test` (project Flutter).
