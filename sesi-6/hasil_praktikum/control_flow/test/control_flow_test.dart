import 'package:control_flow/control_flow.dart';
import 'package:test/test.dart';

void main() {
  test('predikat nilai memakai if-else dan operator logika', () {
    expect(predikatNilai(95), 'A');
    expect(predikatNilai(85), 'B');
    expect(predikatNilai(70), 'C');
    expect(predikatNilai(30), 'D');
    expect(predikatNilai(-101), 'nilai -101 tidak diakui');
    expect(predikatNilai(101), 'nilai 101 tidak diakui');
  });

  test('ternary dan named parameter', () {
    expect(cekKelulusan(65), 'Tidak Lulus');
    expect(cekKelulusan(65, nilaiMin: 60), 'Lulus');
  });

  test('do-while tetap berjalan sekali walau kondisi awal salah', () {
    expect(() => contohDoWhile(10), prints('Nilai count: 10\n'));
  });

  test('break dan continue', () {
    expect(
      () => contohBreakContinue(),
      prints([1, 3, 5, 7, 9].map((i) => 'Bilangan ganjil: $i\n').join()),
    );
  });

  test('positional vs named parameter', () {
    expect(biodataPositional('A', 20), 'A (20 tahun) dari -');
    expect(
      biodataNamed(kota: 'Jombang', nama: 'A', umur: 20),
      'A (20 tahun) dari Jombang',
    );
  });

  test('fungsi arrow dan callback', () {
    expect(kuadrat(7), 49);
    expect(saring([1, 2, 3, 4], isGenap), [2, 4]);
  });

  test('studi kasus rekap nilai', () {
    final r = rekapNilai({'a': 80, 'b': 60});
    expect(r['rataRata'], 70.0);
    expect(r['lulus'], 1);
    expect(keteranganPredikat('B'), 'Baik');
  });
}
