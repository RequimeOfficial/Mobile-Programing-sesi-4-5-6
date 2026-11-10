import 'package:flutter/material.dart';

/// Latihan 2: menampilkan angka 1 hingga 50 dalam bentuk baris
/// memakai for loop.
class AngkaForPage extends StatelessWidget {
  const AngkaForPage({super.key});

  /// Membuat daftar baris dengan for loop.
  List<Widget> _buatBaris(BuildContext context) {
    final baris = <Widget>[];
    for (int angka = 1; angka <= 50; angka++) {
      baris.add(
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          color: angka.isEven
              ? Theme.of(context).colorScheme.surfaceContainerHighest
              : null,
          child: Row(
            children: [
              SizedBox(width: 90, child: Text('Baris ke-$angka')),
              Text(
                '$angka',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return baris;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 2 - For Loop')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            color: Theme.of(context).colorScheme.primaryContainer,
            child: const Text(
              'for (int angka = 1; angka <= 50; angka++) { ... }',
              style: TextStyle(fontFamily: 'monospace'),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: _buatBaris(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
