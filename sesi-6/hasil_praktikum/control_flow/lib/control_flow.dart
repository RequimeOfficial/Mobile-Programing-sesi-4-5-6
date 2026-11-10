/// Hasil praktikum Sesi 6 - Struktur Kontrol (Control Flow) dan Fungsi.
///
/// Setiap materi dibuat sebagai satu fungsi, lalu dipanggil berurutan
/// dari `bin/control_flow.dart`.
library;

// ===================================================================
// 5.3 IF AND ELSE (SELECTION)
// ===================================================================

/// If tunggal: print hanya dijalankan jika kondisi bernilai true.
void contohIf(bool libur) {
  if (libur == true) {
    print("Hari ini Libur");
  }
}

/// If berpasangan dengan else.
void contohIfElse(bool libur) {
  if (libur == true) {
    print("Hari ini Libur");
  } else {
    print("Hari ini Tidak Libur");
  }
}

/// Versi awal di modul: belum tepat karena nilai 30 tetap menghasilkan "B"
/// (kondisi `nilai < 90` sudah benar lebih dulu sebelum dicek `< 60`).
void contohElseIfAwal(int nilai) {
  if (nilai >= 90) {
    print("A");
  } else if (nilai < 90) {
    print("B");
  } else if (nilai < 80) {
    print("C");
  } else if (nilai < 60) {
    print("D");
  }
}

/// Versi perbaikan: memakai operator perbandingan dan logika (&&)
/// sehingga setiap rentang nilai jelas dan nilai di luar 0-100 ditolak.
String predikatNilai(int nilai) {
  if (nilai >= 90 && nilai <= 100) {
    return "A";
  } else if (nilai >= 80 && nilai < 90) {
    return "B";
  } else if (nilai >= 60 && nilai < 80) {
    return "C";
  } else if (nilai >= 0 && nilai < 60) {
    return "D";
  } else {
    return "nilai $nilai tidak diakui";
  }
}

/// Conditional expression (ternary) dalam satu baris.
String cekKelulusan(int nilaiKu, {int nilaiMin = 70}) =>
    nilaiKu > nilaiMin ? "Lulus" : "Tidak Lulus";

/// If bersarang (nested if).
String cekKedewasaan(String jk, int umur) {
  if (jk == 'pria') {
    if (umur <= 18) {
      return 'Pria belum dewasa';
    } else {
      return 'Pria dewasa';
    }
  } else {
    if (umur <= 18) {
      return 'Wanita belum dewasa';
    } else {
      return 'Wanita dewasa';
    }
  }
}

// ===================================================================
// 5.4 - 5.6 FOR, FOR-IN, FOREACH (ITERATION)
// ===================================================================

/// For: menampilkan angka 1 sampai [batas].
void contohFor([int batas = 5]) {
  for (int angka = 1; angka <= batas; angka++) {
    print(angka);
  }
}

/// For untuk mengulang nilai selain angka.
void contohForTeks() {
  var bahasa = "dart";
  for (int angka = 1; angka <= 5; angka++) {
    print(bahasa);
  }
}

/// For-in pada List, Set dan Map.
void contohForIn() {
  var myList = [1, 2, 3, 4, 5];
  for (var item in myList) {
    print('List item: $item');
  }

  var mySet = {1, 2, 3, 4, 5};
  for (var item in mySet) {
    print('Set item: $item');
  }

  var myMap = {'a': 1, 'b': 2, 'c': 3};
  for (var key in myMap.keys) {
    var value = myMap[key];
    print('Map $key = $value');
  }
}

/// forEach dengan fungsi callback.
void contohForEach() {
  var myList = [1, 2, 3, 4, 5];
  myList.forEach((item) {
    print('forEach List: $item');
  });

  var mySet = {1, 2, 3, 4, 5};
  mySet.forEach((item) {
    print('forEach Set: $item');
  });

  var myMap = {'a': 1, 'b': 2, 'c': 3};
  myMap.forEach((key, value) {
    print('forEach Map: $key -> $value');
  });
}

// ===================================================================
// 5.7 - 5.8 WHILE DAN DO-WHILE
// ===================================================================

/// While: kondisi dicek dulu sebelum blok kode dijalankan.
void contohWhile() {
  var angka = 1;
  while (angka <= 5) {
    print(angka);
    angka++;
  }
}

/// Do-while: blok kode dijalankan minimal sekali, baru kondisi dicek.
void contohDoWhile([int count = 1]) {
  do {
    print('Nilai count: $count');
    count++;
  } while (count <= 5);
}

// ===================================================================
// BREAK DAN CONTINUE
// ===================================================================

/// continue melewati angka genap, break menghentikan loop di angka 9.
void contohBreakContinue() {
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      continue; // lompat ke iterasi berikutnya
    }
    if (i > 9) {
      break; // keluar dari loop
    }
    print('Bilangan ganjil: $i');
  }
}

// ===================================================================
// 5.9 SWITCH AND CASE
// ===================================================================

/// Switch-case untuk keterangan nilai huruf.
void contohSwitch(String nilai) {
  switch (nilai) {
    case 'A':
      print('Sangat Baik');
      break;
    case 'B':
      print('Baik');
      break;
    case 'C':
      print('Cukup');
      break;
    default:
      print('Nilai tidak valid');
  }
}

/// Switch-case untuk memilih operasi hitung.
void contohSwitchOperator(String operator) {
  final angka1 = 2;
  final angka2 = 5;

  switch (operator) {
    case 'tambah':
      print(angka1 + angka2);
      break;
    case 'kurang':
      print(angka1 - angka2);
      break;
    default:
      print('tidak ada pilihan tersebut');
  }
}

// ===================================================================
// FUNGSI DAN METODE (FUNCTIONS)
// ===================================================================

/// Fungsi tanpa nilai kembali (void).
void sapa() {
  print('Halo, selamat belajar Dart!');
}

/// Fungsi dengan return type dan parameter.
int luasPersegiPanjang(int panjang, int lebar) {
  return panjang * lebar;
}

/// Arrow syntax (fat arrow `=>`) untuk fungsi satu ekspresi.
int kuadrat(int x) => x * x;
bool isGenap(int x) => x % 2 == 0;

/// Positional parameter: urutan argumen menentukan nilai parameter.
/// Parameter dalam [] bersifat opsional dengan nilai default.
String biodataPositional(String nama, int umur, [String kota = '-']) =>
    '$nama ($umur tahun) dari $kota';

/// Named parameter: argumen dipanggil berdasarkan nama, boleh acak.
/// `required` wajib diisi, yang lain opsional dengan nilai default.
String biodataNamed({
  required String nama,
  required int umur,
  String kota = '-',
}) => '$nama ($umur tahun) dari $kota';

/// Fungsi sebagai parameter (callback).
List<int> saring(List<int> data, bool Function(int) syarat) {
  final hasil = <int>[];
  for (final n in data) {
    if (syarat(n)) hasil.add(n);
  }
  return hasil;
}

void contohFungsi() {
  sapa();
  print('Luas 4 x 5 = ${luasPersegiPanjang(4, 5)}');
  print('kuadrat(7) = ${kuadrat(7)}');
  print('isGenap(10) = ${isGenap(10)}');
  print(biodataPositional('Robbi', 20));
  print(biodataPositional('Robbi', 20, 'Jombang'));
  print(biodataNamed(kota: 'Jombang', nama: 'Robbi', umur: 20));
  print(
    'Bilangan genap 1-10: ${saring([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], isGenap)}',
  );
}

// ===================================================================
// STUDI KASUS: GABUNGAN STRUKTUR KONTROL DAN FUNGSI
// ===================================================================

/// Menghitung rekap nilai kelas: rata-rata (for-in), predikat (if-else),
/// jumlah lulus (ternary + loop) dan keterangan (switch).
Map<String, Object> rekapNilai(Map<String, int> nilaiKelas, {int kkm = 70}) {
  var total = 0;
  var lulus = 0;
  for (final nilai in nilaiKelas.values) {
    total += nilai;
    lulus += nilai >= kkm ? 1 : 0;
  }
  final rataRata = nilaiKelas.isEmpty ? 0.0 : total / nilaiKelas.length;
  return {
    'rataRata': rataRata,
    'lulus': lulus,
    'tidakLulus': nilaiKelas.length - lulus,
  };
}

String keteranganPredikat(String predikat) {
  switch (predikat) {
    case 'A':
      return 'Sangat Baik';
    case 'B':
      return 'Baik';
    case 'C':
      return 'Cukup';
    case 'D':
      return 'Kurang';
    default:
      return 'Tidak valid';
  }
}

void studiKasusNilai() {
  final nilaiKelas = {'Andi': 92, 'Budi': 78, 'Citra': 85, 'Dewi': 55};
  nilaiKelas.forEach((nama, nilai) {
    final p = predikatNilai(nilai);
    print(
      '$nama: $nilai -> $p (${keteranganPredikat(p)}), ${cekKelulusan(nilai, nilaiMin: 69)}',
    );
  });
  final rekap = rekapNilai(nilaiKelas);
  print(
    'Rata-rata: ${(rekap['rataRata'] as double).toStringAsFixed(2)}, '
    'lulus: ${rekap['lulus']}, tidak lulus: ${rekap['tidakLulus']}',
  );
}
