import 'package:flutter/material.dart';

/// TUGAS Sesi 4: tampilan 3 baris x 3 kolom memakai gabungan
/// widget Column (vertikal) dan Row (horizontal).
class BarisKolom extends StatelessWidget {
  const BarisKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Baris dan Kolom")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var baris = 1; baris <= 3; baris++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var kolom = 1; kolom <= 3; kolom++)
                  Text("Baris $baris, Kolom $kolom"),
              ],
            ),
        ],
      ),
    );
  }
}
