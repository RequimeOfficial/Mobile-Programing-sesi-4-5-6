import 'package:flutter/material.dart';

import 'identitas.dart';

/// Halaman awal: identitas mahasiswa + daftar hasil praktikum dan tugas.
class MenuPraktikum extends StatelessWidget {
  const MenuPraktikum({super.key});

  static const _daftar = [
    (
      '/hello-world',
      'Hello World',
      'Scaffold, AppBar, Center, Text',
      Icons.waving_hand,
    ),
    (
      '/column',
      'Widget Column',
      'Menyusun widget secara vertikal',
      Icons.view_agenda,
    ),
    (
      '/row',
      'Widget Row',
      'Menyusun widget secara horizontal',
      Icons.view_column,
    ),
    (
      '/stateless-stateful',
      'Stateless & Stateful',
      'Perbedaan widget immutable dan berubah',
      Icons.touch_app,
    ),
    (
      '/baris-kolom',
      'TUGAS: Baris dan Kolom',
      'baris_kolom.dart (3 baris x 3 kolom)',
      Icons.grid_on,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Flutter - Sesi 4")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama : $namaMahasiswa",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "NIM   : $nimMahasiswa",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text("Kelas : $kelasMahasiswa"),
                  SizedBox(height: 8),
                  Text("Flutter berjalan di versi Web (Chrome)"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          for (final (rute, judul, keterangan, ikon) in _daftar)
            Card(
              child: ListTile(
                leading: Icon(
                  ikon,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: Text(judul),
                subtitle: Text(keterangan),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Navigator.pushNamed(context, rute),
              ),
            ),
        ],
      ),
    );
  }
}
