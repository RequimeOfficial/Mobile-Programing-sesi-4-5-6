/// Hasil praktikum Sesi 5 - Pengantar Bahasa Pemrograman Dart.
///
/// Setiap materi pada modul dibuat sebagai satu fungsi, lalu semuanya
/// dipanggil berurutan dari `bin/latihan_dart1.dart`.
library;

// ===================================================================
// 4.3 COMMENTS
// ===================================================================

/// Contoh tiga model komentar pada Dart.
///
/// Komentar dengan tiga garis miring seperti ini adalah
/// *documentation comment*: keterangannya muncul saat kursor
/// diarahkan (hover) ke nama fungsi `contohKomentar`.
void contohKomentar() {
  // Komentar tunggal (single-line comment) diawali dua garis miring.
  print('Komentar tunggal memakai //');

  /* Komentar multi baris (multiple-line comment)
     diawali tanda garis miring-bintang dan diakhiri bintang-garis miring,
     boleh ditulis dalam beberapa baris sekaligus. */
  print('Komentar multi baris memakai /* ... */');

  print('Komentar dokumentasi memakai /// (muncul saat hover)');
}

// ===================================================================
// 4.4 VARIABLE (var, final, const, late)
// ===================================================================

/// Contoh deklarasi variabel dengan var, final, const dan late.
void contohVariabel() {
  // var: tipe data ditentukan otomatis dari nilai yang diberikan.
  var kata = 'Halo Dart';
  print(kata);
  print("$kata"); // memakai tanda $ di dalam petik dua (interpolasi)

  var angka = 80; // otomatis bertipe int
  print(angka);

  // final dengan nilai yang sudah diketahui.
  final tglLahir = '1996-01-01';
  print(tglLahir);

  // final dengan nilai yang baru diketahui saat program dijalankan.
  final tglSekarang = DateTime.now();
  print('Tahun sekarang: ${tglSekarang.year}');

  // const: nilai harus sudah pasti sebelum program dijalankan.
  const jmlHariSeminggu = 7;
  print(jmlHariSeminggu);

  // late: variabel non-nullable yang diinisialisasi belakangan.
  late String message; // variabel late
  late final String title; // variabel late final
  message = 'Variabel late diisi belakangan';
  title = 'Variabel late final hanya boleh diisi sekali';
  print(message);
  print(title);
}

// ===================================================================
// 4.5 TIPE DATA
// ===================================================================

/// Contoh tipe data String, int, double, num, bool, List, Map, dynamic.
void contohTipeData() {
  // dynamic: boleh berganti tipe data.
  var x; // tanpa nilai awal -> dynamic
  x = 5;
  x = 'Halo Dart';
  print(x); // Output: Halo Dart

  // Kode berikut ERROR karena x sudah bertipe int sejak awal:
  // var y = 7;
  // y = 'Halo Dart'; // Error: A value of type 'String' can't be assigned to int

  // String
  String kata = 'Halo'; // satu petik
  String kata2 = "Dart"; // dua petik
  print('$kata $kata2'); // Output: Halo Dart

  // int, double, num, bool
  int angka1 = 5;
  double angka2 = 5;
  num angka3 = 5.0;
  bool cek = true;
  print(angka1); // Output: 5
  print(angka2); // Output: 5.0
  print(angka3); // Output: 5.0
  print(cek); // Output: true

  // List dan Map
  List<String> buah = ['Apel', 'Jeruk'];
  Map<String, String> data = {'buah': 'Apel'};
  print(buah); // Output: [Apel, Jeruk]
  print(data); // Output: {buah: Apel}

  // bool sering dipakai bersama control flow.
  if (cek) {
    print("Bernilai Benar");
  } else {
    print("Bernilai Salah");
  }
}

// ===================================================================
// 4.6 OPERATOR
// ===================================================================

/// Contoh operator aritmatika, increment/decrement, perbandingan, logika.
void contohOperator() {
  // Operator aritmatika
  print(1 + 2); // penjumlahan = 3
  print(4 - 3); // pengurangan = 1
  print(4 * 3); // perkalian = 12
  print(5 / 2); // pembagian = 2.5
  print(5 ~/ 2); // pembagian bulat = 2
  print(5 % 2); // modulus = 1

  // Operator dengan variabel
  var angka1 = 4;
  var angka2 = 2;
  print(angka1 + angka2); // penjumlahan = 6

  // Urutan operasi: perkalian/pembagian didahulukan
  print(3 + 4 * 5); // output = 23
  print((3 + 4) * 5); // output = 7 * 5 = 35

  // Increment dan decrement
  var a = 2;
  var b = 7;
  a++;
  b--;
  print(a); // output = 3
  print(b); // output = 6

  // Operator perbandingan
  print(a == b); // false
  print(a != b); // true
  print(a > b); // false
  print(a < b); // true
  print(a >= 3); // true
  print(b <= 5); // false

  // Operator logika
  print(a < b || a > 10); // OR  -> true
  print(a < b && b > 10); // AND -> false
  print(!(a < b)); // NOT -> false
}

// ===================================================================
// 4.7 FUNCTION
// ===================================================================

/// Fungsi void tanpa parameter.
void fungsiTeks() {
  print("Teks Didalam Fungsi");
}

/// Fungsi dengan satu parameter.
// Catatan: di modul ditulis `var nama`; sejak Dart 3.13 modifier `var` tidak
// boleh lagi pada parameter, jadi dipakai tipe `String`.
void fungsiTeksNama(String nama) {
  print("Hi, nama saya $nama");
}

/// Fungsi dengan beberapa parameter.
void fungsiTeksNegara(String nama, String negara) {
  print("Hi, nama saya $nama, saya dari $negara");
}

/// Fungsi yang mengembalikan nilai (return).
int tambah(int a, int b) {
  return a + b;
}

/// Contoh pemanggilan fungsi.
void contohFungsi() {
  fungsiTeks();
  fungsiTeksNama("arif");
  fungsiTeksNegara("arif", "Indonesia");
  print('tambah(4, 6) = ${tambah(4, 6)}');
}
