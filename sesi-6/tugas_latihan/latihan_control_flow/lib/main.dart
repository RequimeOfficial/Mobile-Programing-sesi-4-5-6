import 'package:flutter/material.dart';

import 'pages/angka_for_page.dart';
import 'pages/beranda_page.dart';
import 'pages/jumlah_hari_page.dart';
import 'pages/kategori_umur_page.dart';
import 'pages/kelipatan_while_page.dart';
import 'pages/studi_kasus_page.dart';

void main() {
  runApp(const LatihanControlFlowApp());
}

class LatihanControlFlowApp extends StatelessWidget {
  const LatihanControlFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Control Flow - Sesi 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BerandaPage(),
        '/kategori-umur': (context) => const KategoriUmurPage(),
        '/angka-for': (context) => const AngkaForPage(),
        '/kelipatan-while': (context) => const KelipatanWhilePage(),
        '/jumlah-hari': (context) => const JumlahHariPage(),
        '/studi-kasus': (context) => const StudiKasusPage(),
      },
    );
  }
}
