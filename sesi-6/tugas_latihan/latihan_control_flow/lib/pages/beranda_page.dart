import 'package:flutter/material.dart';

/// Halaman awal berisi identitas dan daftar latihan.
class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  static const _latihan = [
    (
      '/kategori-umur',
      'Latihan 1 - If Else',
      'Kategori umur berdasarkan nilai usia',
      Icons.person_search,
    ),
    (
      '/angka-for',
      'Latihan 2 - For Loop',
      'Menampilkan angka 1 hingga 50 dalam baris',
      Icons.format_list_numbered,
    ),
    (
      '/kelipatan-while',
      'Latihan 3 - While Loop',
      'Kelipatan 3 dari 3 hingga 15',
      Icons.repeat,
    ),
    (
      '/jumlah-hari',
      'Latihan 4 - Switch Case',
      'Jumlah hari dari angka bulan 1-12',
      Icons.calendar_month,
    ),
    (
      '/studi-kasus',
      'Studi Kasus - Struktur Kontrol & Fungsi',
      'Kalkulator nilai akhir mahasiswa',
      Icons.school,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Control Flow - Sesi 6')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: warna.primaryContainer,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Struktur Kontrol dan Fungsi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text('Ahmad Mofidur Robbiyal Aqla'),
                  Text('NIM 2495114006 - Kelas 5 - A'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          for (final (rute, judul, keterangan, ikon) in _latihan)
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: warna.primary,
                  foregroundColor: warna.onPrimary,
                  child: Icon(ikon),
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
