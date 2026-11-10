import 'package:flutter/material.dart';

import '../logika/logika.dart';

/// Latihan 1: kategori umur dengan if-else.
class KategoriUmurPage extends StatefulWidget {
  const KategoriUmurPage({super.key});

  @override
  State<KategoriUmurPage> createState() => _KategoriUmurPageState();
}

class _KategoriUmurPageState extends State<KategoriUmurPage> {
  int usia = 20;

  /// Warna dan ikon per kategori, juga memakai if-else.
  (Color, IconData) _gaya(String kategori) {
    if (kategori == 'Anak-anak') {
      return (Colors.orange, Icons.child_care);
    } else if (kategori == 'Remaja') {
      return (Colors.green, Icons.directions_bike);
    } else if (kategori == 'Dewasa') {
      return (Colors.blue, Icons.work);
    } else {
      return (Colors.purple, Icons.elderly);
    }
  }

  @override
  Widget build(BuildContext context) {
    final kategori = kategoriUmur(usia);
    final (warna, ikon) = _gaya(kategori);

    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 1 - If Else')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: Color.lerp(Colors.white, warna, 0.15),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Icon(ikon, size: 64, color: warna),
                  const SizedBox(height: 8),
                  Text(
                    'Usia: $usia tahun',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    kategori,
                    key: const Key('hasilKategori'),
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: warna,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text('Geser untuk mengubah nilai variabel usia:'),
          Slider(
            key: const Key('sliderUsia'),
            value: usia.toDouble(),
            min: 0,
            max: 100,
            divisions: 100,
            label: '$usia',
            onChanged: (v) => setState(() => usia = v.round()),
          ),
          Wrap(
            spacing: 8,
            children: [
              for (final contoh in [8, 15, 30, 70])
                ActionChip(
                  label: Text('$contoh th'),
                  onPressed: () => setState(() => usia = contoh),
                ),
            ],
          ),
          const SizedBox(height: 16),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Aturan:\n'
                '• usia < 12 : Anak-anak\n'
                '• 12 ≤ usia ≤ 17 : Remaja\n'
                '• 18 ≤ usia ≤ 64 : Dewasa\n'
                '• usia ≥ 65 : Lansia',
                style: TextStyle(height: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
