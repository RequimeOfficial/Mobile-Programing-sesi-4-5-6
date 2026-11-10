import 'package:flutter/material.dart';

import '../logika/logika.dart';

/// Studi kasus: gabungan struktur kontrol dan fungsi untuk menghitung
/// nilai akhir mahasiswa (named parameter, if-else, switch, ternary).
class StudiKasusPage extends StatefulWidget {
  const StudiKasusPage({super.key});

  @override
  State<StudiKasusPage> createState() => _StudiKasusPageState();
}

class _StudiKasusPageState extends State<StudiKasusPage> {
  double tugas = 85;
  double uts = 78;
  double uas = 82;

  Widget _slider(String label, double nilai, ValueChanged<double> ubah) {
    return Row(
      children: [
        SizedBox(width: 60, child: Text(label)),
        Expanded(
          child: Slider(
            value: nilai,
            max: 100,
            divisions: 100,
            label: nilai.round().toString(),
            onChanged: (v) => setState(() => ubah(v.roundToDouble())),
          ),
        ),
        SizedBox(width: 36, child: Text(nilai.round().toString())),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final akhir = nilaiAkhir(tugas: tugas, uts: uts, uas: uas);
    final p = predikat(akhir);
    final lulus = akhir >= 60 ? 'LULUS' : 'TIDAK LULUS';
    final warna = akhir >= 60 ? Colors.green : Colors.red;

    return Scaffold(
      appBar: AppBar(title: const Text('Studi Kasus - Nilai Akhir')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Bobot: Tugas 30%, UTS 30%, UAS 40%'),
          const SizedBox(height: 8),
          _slider('Tugas', tugas, (v) => tugas = v),
          _slider('UTS', uts, (v) => uts = v),
          _slider('UAS', uas, (v) => uas = v),
          const SizedBox(height: 12),
          Card(
            color: Color.lerp(Colors.white, warna, 0.12),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    akhir.toStringAsFixed(1),
                    key: const Key('nilaiAkhir'),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Predikat $p - ${keterangan(p)}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    lulus,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: warna,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Rata-rata komponen: '
            '${rataRata([tugas, uts, uas]).toStringAsFixed(1)}',
          ),
        ],
      ),
    );
  }
}
