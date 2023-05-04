import 'package:flutter/material.dart';
import 'package:klinik_app/model/home.dart';
import 'package:klinik_app/model/poli.dart';
import 'package:klinik_app/ui/poli_detail.dart';

class PoliPage extends StatefulWidget {
  final Home home;

  const PoliPage({super.key, required this.home});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliAnak),
                  ));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Poli Kandungan"),
              ),
            ),
            onTap: () {
              Poli poliKandungan = Poli(namaPoli: "Poli Kandungan");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliKandungan),
                  ));
            },
          ),
          const Card(
            child: ListTile(
              title: Text("Poli Gigi"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Poli THT"),
            ),
          )
        ],
      ),
    );
  }
}
