import 'package:latihan_dart1/latihan_dart1.dart';
import 'package:test/test.dart';

void main() {
  test('fungsi tambah mengembalikan hasil penjumlahan', () {
    expect(tambah(4, 6), 10);
  });

  test('operator aritmatika sesuai modul', () {
    expect(() => contohOperator(), prints(contains('23\n35\n')));
  });

  test('fungsi dengan parameter', () {
    expect(
      () => fungsiTeksNegara('arif', 'Indonesia'),
      prints('Hi, nama saya arif, saya dari Indonesia\n'),
    );
  });

  test('variabel dynamic dapat berganti tipe', () {
    expect(() => contohTipeData(), prints(startsWith('Halo Dart\n')));
  });
}
