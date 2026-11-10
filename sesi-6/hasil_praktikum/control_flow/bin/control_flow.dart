import 'package:control_flow/control_flow.dart';

void judul(String teks) {
  print('');
  print('===== $teks =====');
}

void main() {
  print('Hasil Praktikum Sesi 6 - Struktur Kontrol dan Fungsi');
  print('Ahmad Mofidur Robbiyal Aqla - 2495114006');

  judul('5.3 If dan Else');
  contohIf(true);
  contohIfElse(false);
  contohElseIfAwal(30); // hasil "B" (belum tepat, lihat komentar)
  print(predikatNilai(30)); // D
  print(predikatNilai(-101)); // nilai -101 tidak diakui
  print(cekKelulusan(65)); // Tidak Lulus
  print(cekKedewasaan('pria', 17));

  judul('5.4 For');
  contohFor();
  contohForTeks();

  judul('5.5 For-in');
  contohForIn();

  judul('5.6 ForEach');
  contohForEach();

  judul('5.7 While');
  contohWhile();

  judul('5.8 Do-While');
  contohDoWhile();
  contohDoWhile(10); // tetap dijalankan sekali walau kondisi awal salah

  judul('Break dan Continue');
  contohBreakContinue();

  judul('5.9 Switch dan Case');
  contohSwitch('B');
  contohSwitchOperator('tambah');
  contohSwitchOperator('bagi');

  judul('Fungsi dan Metode');
  contohFungsi();

  judul('Studi Kasus: Rekap Nilai Kelas');
  studiKasusNilai();
}
