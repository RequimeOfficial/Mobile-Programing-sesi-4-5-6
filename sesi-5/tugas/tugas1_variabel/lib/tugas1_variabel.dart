/// Mencetak hasil penjumlahan, pengurangan, perkalian dan pembagian
/// dari [a] dan [b] dengan format seperti pada soal.
void tampilkanOperasiHitung(int a, int b) {
  // Operasi hitung disimpan ke variabel masing-masing
  int penjumlahan = a + b; // 10 + 5 = 15
  int pengurangan = a - b; // 10 - 5 = 5
  int perkalian = a * b; // 10 * 5 = 50
  double pembagian = a / b; // operator / selalu menghasilkan double: 2.0

  // Menampilkan hasil dengan interpolasi string ($variabel)
  print('Penjumlahan $a + $b = $penjumlahan');
  print('Pengurangan $a - $b = $pengurangan');
  print('Perkalian $a * $b = $perkalian');
  print('Pembagian $a / $b = $pembagian');
}
