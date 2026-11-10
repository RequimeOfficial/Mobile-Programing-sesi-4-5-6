/// Logika program untuk setiap latihan Sesi 6.
///
/// Dipisah dari tampilan (widget) agar mudah dibaca dan diuji.
library;

// -------------------------------------------------------------------
// Latihan 1 - IF ELSE: kategori umur
// -------------------------------------------------------------------

/// Mengembalikan kategori umur berdasarkan [usia] memakai if-else.
String kategoriUmur(int usia) {
  if (usia < 0) {
    return 'Usia tidak valid';
  } else if (usia < 12) {
    return 'Anak-anak';
  } else if (usia >= 12 && usia <= 17) {
    return 'Remaja';
  } else if (usia >= 18 && usia <= 64) {
    return 'Dewasa';
  } else {
    return 'Lansia';
  }
}

// -------------------------------------------------------------------
// Latihan 2 - FOR: angka 1 hingga 50
// -------------------------------------------------------------------

/// Menghasilkan daftar angka dari [awal] sampai [akhir] memakai for loop.
List<int> angkaBerurutan({int awal = 1, int akhir = 50}) {
  final hasil = <int>[];
  for (int angka = awal; angka <= akhir; angka++) {
    hasil.add(angka);
  }
  return hasil;
}

// -------------------------------------------------------------------
// Latihan 3 - WHILE: kelipatan 3 dari 3 hingga 15
// -------------------------------------------------------------------

/// Menghasilkan kelipatan [kelipatan] dari [kelipatan] sampai [batas]
/// memakai while loop.
List<int> kelipatanWhile({int kelipatan = 3, int batas = 15}) {
  final hasil = <int>[];
  var angka = kelipatan;
  while (angka <= batas) {
    hasil.add(angka);
    angka += kelipatan;
  }
  return hasil;
}

// -------------------------------------------------------------------
// Latihan 4 - SWITCH CASE: jumlah hari dalam bulan
// -------------------------------------------------------------------

/// Tahun kabisat: habis dibagi 4, kecuali kelipatan 100 yang bukan
/// kelipatan 400 (arrow function).
bool isKabisat(int tahun) =>
    (tahun % 4 == 0 && tahun % 100 != 0) || tahun % 400 == 0;

/// Jumlah hari pada [bulan] (1-12) memakai switch-case.
/// Mengembalikan null jika bulan di luar 1-12.
/// [tahun] adalah named parameter opsional untuk menentukan Februari.
int? jumlahHari(int bulan, {int? tahun}) {
  switch (bulan) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      return 31;
    case 4:
    case 6:
    case 9:
    case 11:
      return 30;
    case 2:
      if (tahun == null) return 28;
      return isKabisat(tahun) ? 29 : 28;
    default:
      return null;
  }
}

/// Nama bulan dari angka 1-12 (switch expression Dart 3).
String namaBulan(int bulan) => switch (bulan) {
  1 => 'Januari',
  2 => 'Februari',
  3 => 'Maret',
  4 => 'April',
  5 => 'Mei',
  6 => 'Juni',
  7 => 'Juli',
  8 => 'Agustus',
  9 => 'September',
  10 => 'Oktober',
  11 => 'November',
  12 => 'Desember',
  _ => '-',
};

// -------------------------------------------------------------------
// Studi kasus - gabungan struktur kontrol dan fungsi
// -------------------------------------------------------------------

/// Predikat nilai 0-100 memakai if-else + operator logika.
String predikat(double nilai) {
  if (nilai >= 85 && nilai <= 100) {
    return 'A';
  } else if (nilai >= 70 && nilai < 85) {
    return 'B';
  } else if (nilai >= 60 && nilai < 70) {
    return 'C';
  } else if (nilai >= 0 && nilai < 60) {
    return 'D';
  }
  return '-';
}

/// Keterangan predikat memakai switch-case.
String keterangan(String predikat) {
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

/// Nilai akhir dari tugas, UTS dan UAS dengan bobot (named parameter).
double nilaiAkhir({
  required double tugas,
  required double uts,
  required double uas,
  double bobotTugas = 0.3,
  double bobotUts = 0.3,
  double bobotUas = 0.4,
}) => tugas * bobotTugas + uts * bobotUts + uas * bobotUas;

/// Rata-rata daftar nilai (positional parameter, for-in loop).
double rataRata(List<double> daftar) {
  if (daftar.isEmpty) return 0;
  var total = 0.0;
  for (final n in daftar) {
    total += n;
  }
  return total / daftar.length;
}
