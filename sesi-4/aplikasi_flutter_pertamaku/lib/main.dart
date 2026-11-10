import 'package:flutter/material.dart';

import 'baris_kolom.dart';
import 'column_widget.dart';
import 'hello_world.dart';
import 'identitas.dart';
import 'menu_praktikum.dart';
import 'row_widget.dart';
import 'stateless_stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sesi 4 - $namaMahasiswa ($nimMahasiswa)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPraktikum(),
        '/hello-world': (context) => const HelloWorld(),
        '/column': (context) => const ColumnWidget(),
        '/row': (context) => const RowWidget(),
        '/stateless-stateful': (context) => const ContohStateful(),
        '/baris-kolom': (context) => const BarisKolom(),
      },
    );
  }
}
