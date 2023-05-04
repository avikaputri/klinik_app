import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';

class PasienDetai extends StatefulWidget {
  final Pasien pasien;

  const PasienDetai({super.key, required this.pasien});

  @override
  State<PasienDetai> createState() => _PasienDetaiState();
}

class _PasienDetaiState extends State<PasienDetai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Nomor Ruangan : ${widget.pasien.nomorRm}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggalLahirpasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon : ${widget.pasien.nomorTeleponpasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: const TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
