import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latihan_control_flow/logika/logika.dart';
import 'package:latihan_control_flow/main.dart';

void main() {
  group('Logika', () {
    test('kategori umur (if-else)', () {
      expect(kategoriUmur(5), 'Anak-anak');
      expect(kategoriUmur(11), 'Anak-anak');
      expect(kategoriUmur(12), 'Remaja');
      expect(kategoriUmur(17), 'Remaja');
      expect(kategoriUmur(18), 'Dewasa');
      expect(kategoriUmur(64), 'Dewasa');
      expect(kategoriUmur(65), 'Lansia');
    });

    test('for loop 1 sampai 50', () {
      final a = angkaBerurutan();
      expect(a.length, 50);
      expect(a.first, 1);
      expect(a.last, 50);
    });

    test('while loop kelipatan 3', () {
      expect(kelipatanWhile(), [3, 6, 9, 12, 15]);
    });

    test('switch jumlah hari', () {
      expect(jumlahHari(1), 31);
      expect(jumlahHari(4), 30);
      expect(jumlahHari(2), 28);
      expect(jumlahHari(2, tahun: 2028), 29);
      expect(jumlahHari(2, tahun: 1900), 28);
      expect(jumlahHari(13), isNull);
      expect(jumlahHari(0), isNull);
    });

    test('studi kasus nilai akhir', () {
      expect(nilaiAkhir(tugas: 80, uts: 70, uas: 90), closeTo(81, 0.001));
      expect(predikat(81), 'B');
      expect(keterangan('B'), 'Baik');
      expect(rataRata([80, 70, 90]), 80);
    });
  });

  testWidgets('Beranda menampilkan identitas dan 5 menu', (tester) async {
    await tester.pumpWidget(const LatihanControlFlowApp());
    expect(find.text('Ahmad Mofidur Robbiyal Aqla'), findsOneWidget);
    expect(find.byType(ListTile), findsNWidgets(5));
  });

  testWidgets('Latihan 1 kategori berubah saat chip ditekan', (tester) async {
    await tester.pumpWidget(const LatihanControlFlowApp());
    await tester.tap(find.text('Latihan 1 - If Else'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('hasilKategori')), findsOneWidget);
    expect(find.text('Dewasa'), findsOneWidget);
    await tester.tap(find.text('15 th'));
    await tester.pump();
    expect(find.text('Remaja'), findsOneWidget);
    await tester.tap(find.text('70 th'));
    await tester.pump();
    expect(find.text('Lansia'), findsOneWidget);
  });

  testWidgets('Latihan 2 menampilkan baris 1 sampai 50', (tester) async {
    await tester.pumpWidget(const LatihanControlFlowApp());
    await tester.tap(find.text('Latihan 2 - For Loop'));
    await tester.pumpAndSettle();
    expect(find.text('Baris ke-1'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Baris ke-50'), 300);
    expect(find.text('50'), findsOneWidget);
  });

  testWidgets('Latihan 3 menampilkan 5 kelipatan', (tester) async {
    await tester.pumpWidget(const LatihanControlFlowApp());
    await tester.tap(find.text('Latihan 3 - While Loop'));
    await tester.pumpAndSettle();
    expect(find.text('Iterasi ke-5: angka = 15'), findsOneWidget);
  });

  testWidgets('Latihan 4 input bulan', (tester) async {
    await tester.pumpWidget(const LatihanControlFlowApp());
    await tester.tap(find.text('Latihan 4 - Switch Case'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byKey(const Key('inputBulan')), '4');
    await tester.tap(find.byKey(const Key('tombolCek')));
    await tester.pump();
    expect(find.text('Bulan April memiliki 30 hari'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('inputBulan')), '2');
    await tester.enterText(find.byKey(const Key('inputTahun')), '2028');
    await tester.tap(find.byKey(const Key('tombolCek')));
    await tester.pump();
    expect(find.text('Bulan Februari 2028 memiliki 29 hari'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('inputBulan')), '13');
    await tester.tap(find.byKey(const Key('tombolCek')));
    await tester.pump();
    expect(find.text('Masukkan angka bulan 1 sampai 12'), findsOneWidget);
  });
}
