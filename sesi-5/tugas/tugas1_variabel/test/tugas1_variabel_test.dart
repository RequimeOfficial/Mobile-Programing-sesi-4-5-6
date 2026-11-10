import 'package:tugas1_variabel/tugas1_variabel.dart';
import 'package:test/test.dart';

void main() {
  test('output sesuai soal tugas1_variabel', () {
    expect(
      () => tampilkanOperasiHitung(10, 5),
      prints(
        'Penjumlahan 10 + 5 = 15\n'
        'Pengurangan 10 - 5 = 5\n'
        'Perkalian 10 * 5 = 50\n'
        'Pembagian 10 / 5 = 2.0\n',
      ),
    );
  });
}
