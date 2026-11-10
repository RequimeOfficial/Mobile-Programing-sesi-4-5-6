import 'package:flutter/material.dart';

import '../logika/logika.dart';

/// Latihan 3: mencetak kelipatan 3 dari 3 hingga 15 memakai while loop.
class KelipatanWhilePage extends StatelessWidget {
  const KelipatanWhilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final hasil = kelipatanWhile(); // [3, 6, 9, 12, 15]
    final warna = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 3 - While Loop')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: warna.primaryContainer,
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'var angka = 3;\n'
                'while (angka <= 15) {\n'
                '  print(angka);\n'
                '  angka += 3;\n'
                '}',
                style: TextStyle(fontFamily: 'monospace', height: 1.4),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Hasil kelipatan 3 dari 3 hingga 15:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          for (var i = 0; i < hasil.length; i++)
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: warna.primary,
                  foregroundColor: warna.onPrimary,
                  child: Text('${hasil[i]}'),
                ),
                title: Text('Iterasi ke-${i + 1}: angka = ${hasil[i]}'),
                subtitle: Text('${hasil[i]} = 3 x ${i + 1}'),
              ),
            ),
          const SizedBox(height: 8),
          Text(
            'Loop berhenti saat angka = ${hasil.last + 3} karena kondisi '
            '${hasil.last + 3} <= 15 bernilai false.',
            style: TextStyle(color: warna.outline),
          ),
        ],
      ),
    );
  }
}
