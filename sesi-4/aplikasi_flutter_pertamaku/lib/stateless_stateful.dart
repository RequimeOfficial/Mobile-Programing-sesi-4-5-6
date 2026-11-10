import 'package:flutter/material.dart';

/// Contoh StatelessWidget: propertinya immutable (tidak bisa diubah).
class ContohStateless extends StatelessWidget {
  const ContohStateless({super.key, required this.pesan});

  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Text(pesan, style: const TextStyle(fontSize: 18));
  }
}

/// Contoh StatefulWidget: nilainya dapat berubah-ubah lewat setState().
class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  int _jumlahKlik = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless & Stateful")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ContohStateless(pesan: "Teks ini tidak berubah (Stateless)"),
            const SizedBox(height: 16),
            Text(
              "Tombol ditekan $_jumlahKlik kali (Stateful)",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _jumlahKlik++),
        child: const Icon(Icons.add),
      ),
    );
  }
}
