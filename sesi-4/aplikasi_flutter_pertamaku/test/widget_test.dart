import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aplikasi_flutter_pertamaku/main.dart';

void main() {
  testWidgets('Menu menampilkan nama dan NIM', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.textContaining('Ahmad Mofidur Robbiyal Aqla'), findsOneWidget);
    expect(find.textContaining('2495114006'), findsOneWidget);
  });

  testWidgets('Tugas baris_kolom menampilkan 3 baris x 3 kolom', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.text('TUGAS: Baris dan Kolom'));
    await tester.pumpAndSettle();
    expect(find.text('Baris dan Kolom'), findsOneWidget);
    for (var b = 1; b <= 3; b++) {
      for (var k = 1; k <= 3; k++) {
        expect(find.text('Baris $b, Kolom $k'), findsOneWidget);
      }
    }
    expect(find.byType(Row), findsNWidgets(3));
  });

  testWidgets('Hello World dan contoh Stateful', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.text('Hello World'));
    await tester.pumpAndSettle();
    expect(find.text('Hello World'), findsOneWidget);
    expect(find.text('Belajar Flutter'), findsOneWidget);

    tester
        .state<NavigatorState>(find.byType(Navigator))
        .pushReplacementNamed('/stateless-stateful');
    await tester.pumpAndSettle();
    expect(find.textContaining('0 kali'), findsOneWidget);
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(find.textContaining('1 kali'), findsOneWidget);
  });
}
