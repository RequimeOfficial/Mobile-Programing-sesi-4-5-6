import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../logika/logika.dart';

/// Latihan 4: pengguna memasukkan angka bulan (1-12), lalu switch-case
/// menentukan jumlah hari pada bulan tersebut.
class JumlahHariPage extends StatefulWidget {
  const JumlahHariPage({super.key});

  @override
  State<JumlahHariPage> createState() => _JumlahHariPageState();
}

class _JumlahHariPageState extends State<JumlahHariPage> {
  final _bulanController = TextEditingController();
  final _tahunController = TextEditingController(text: '2026');
  String? _hasil;
  String? _error;

  void _cek() {
    final bulan = int.tryParse(_bulanController.text);
    final tahun = int.tryParse(_tahunController.text);
    setState(() {
      final hari = bulan == null ? null : jumlahHari(bulan, tahun: tahun);
      if (hari == null) {
        _hasil = null;
        _error = 'Masukkan angka bulan 1 sampai 12';
      } else {
        _error = null;
        _hasil =
            'Bulan ${namaBulan(bulan!)}'
            '${bulan == 2 && tahun != null ? ' $tahun' : ''} '
            'memiliki $hari hari';
      }
    });
  }

  @override
  void dispose() {
    _bulanController.dispose();
    _tahunController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 4 - Switch Case')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            key: const Key('inputBulan'),
            controller: _bulanController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              labelText: 'Bulan (angka 1-12)',
              prefixIcon: const Icon(Icons.calendar_month),
              border: const OutlineInputBorder(),
              errorText: _error,
            ),
            onSubmitted: (_) => _cek(),
          ),
          const SizedBox(height: 12),
          TextField(
            key: const Key('inputTahun'),
            controller: _tahunController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(
              labelText: 'Tahun (untuk Februari / kabisat)',
              prefixIcon: Icon(Icons.event),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            key: const Key('tombolCek'),
            onPressed: _cek,
            icon: const Icon(Icons.search),
            label: const Text('Tampilkan Jumlah Hari'),
          ),
          const SizedBox(height: 16),
          if (_hasil != null)
            Card(
              color: warna.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  _hasil!,
                  key: const Key('hasilHari'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Daftar jumlah hari (hasil switch-case):',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  for (var b = 1; b <= 12; b++)
                    Text(
                      '$b. ${namaBulan(b)} = '
                      '${jumlahHari(b, tahun: int.tryParse(_tahunController.text))} hari',
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
