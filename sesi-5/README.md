# Sesi 5 – Pengantar Bahasa Pemrograman Dart

**Ahmad Mofidur Robbiyal Aqla – 2495114006**

## 1. Hasil latihan dasar – `hasil_praktikum/latihan_dart1`

Project Dart *Console Application* (dibuat dengan `Dart: New Project` / `dart create -t console latihan_dart1`).
Setiap materi modul ditulis sebagai fungsi di `lib/latihan_dart1.dart` dan dipanggil dari `bin/latihan_dart1.dart`.

| Materi | Fungsi | Isi |
|---|---|---|
| 4.3 Comments | `contohKomentar()` | komentar `//`, `/* */`, dan dokumentasi `///` |
| 4.4 Variable | `contohVariabel()` | `var`, `final`, `const`, `late`, `late final` |
| 4.5 Tipe Data | `contohTipeData()` | `dynamic`, `String`, `int`, `double`, `num`, `bool`, `List`, `Map` |
| 4.6 Operator | `contohOperator()` | aritmatika (`+ - * / % ~/`), increment/decrement, perbandingan, logika |
| 4.7 Function | `contohFungsi()` | fungsi void, dengan parameter, beberapa parameter, return |

```bash
cd hasil_praktikum/latihan_dart1
dart run      # hasil lengkap ada di output.txt
dart test
```

## 2. Tugas – `tugas/tugas1_variabel`

Membuat program dengan unsur **variabel, operasi hitung, dan komentar** yang menghasilkan output:

```
Penjumlahan 10 + 5 = 15
Pengurangan 10 - 5 = 5
Perkalian 10 * 5 = 50
Pembagian 10 / 5 = 2.0
```

> Pada contoh output di modul baris pembagian tertulis `10 + 5 = 2.0`; di program ini tanda operatornya
> ditulis `/` agar sesuai dengan operasi yang dilakukan. Hasil `2.0` (double) karena operator `/` di Dart selalu menghasilkan double.

```bash
cd tugas/tugas1_variabel
dart run
dart test
```

- `bin/tugas1_variabel.dart` – variabel `angka1 = 10`, `angka2 = 5`, komentar multi baris identitas.
- `lib/tugas1_variabel.dart` – fungsi `tampilkanOperasiHitung()` berisi operasi hitung dan komentar.
