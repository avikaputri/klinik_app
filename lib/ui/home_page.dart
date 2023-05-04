import 'package:flutter/material.dart';
import 'package:klinik_app/model/home.dart';
import 'package:klinik_app/ui/pegawai_page.dart';
import 'package:klinik_app/ui/poli_page.dart';
import 'package:klinik_app/ui/pasien_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KLINIK"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA POLI"),
              ),
            ),
            onTap: () {
              Home dataPoli = Home(namaHome: "Data Poli");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliPage(home: dataPoli),
                  ));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA PASIEN"),
              ),
            ),
            onTap: () {
              Home dataPasien = Home(namaHome: "Data Pasien");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienPage(home: dataPasien),
                  ));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA PEGAWAI"),
              ),
            ),
            onTap: () {
              Home dataPegawai = Home(namaHome: "Data Pegawai");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiPage(home: dataPegawai),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
