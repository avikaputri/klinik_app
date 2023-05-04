import 'package:flutter/material.dart';
import 'package:klinik_app/model/home.dart';
import 'package:klinik_app/model/pegawai.dart';
import 'package:klinik_app/ui/pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  final Home home;

  const PegawaiPage({super.key, required this.home});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Avika Putri"),
              ),
            ),
            onTap: () {
              Pegawai avikaPutri = Pegawai(
                nip: "12210660",
                namaPegawai: "Avika Putri",
                tanggalLahir: "5 Mei 2023",
                nomorTelepon: "08888888888",
                email: "12210660@bsi.ac.id",
                password: "00000",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: avikaPutri),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
