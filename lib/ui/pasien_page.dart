import 'package:flutter/material.dart';
import 'package:klinik_app/model/home.dart';
import 'package:klinik_app/model/pasien.dart';
import 'package:klinik_app/ui/pasien_detail.dart';

class PasienPage extends StatefulWidget {
  final Home home;

  const PasienPage({super.key, required this.home});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Cipung"),
              ),
            ),
            onTap: () {
              Pasien cipung = Pasien(
                nomorRm: "1234",
                namaPasien: "Cipung",
                tanggalLahirpasien: "5 Mei 2023",
                nomorTeleponpasien: "08888888888",
                alamat: "Alamat",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetai(pasien: cipung),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
