import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.green.shade50,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 175,
                    width: 175,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img/syifa.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      height: 280,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green.shade200),
                      child: DataTable(
                        columns: <DataColumn>[
                          DataColumn(label: Text("Nama")),
                          DataColumn(label: Text("Syifa Siti Khumairah")),
                        ],
                        rows: <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("TTL")),
                              DataCell(Text("Bandung, 15 Agustus 2004")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Umur")),
                              DataCell(Text("17 Tahun")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Alamat")),
                              DataCell(Text("Kp. Cangkuang RT.02/05")),
                            ],
                          ),
                          // DataRow(
                          //   cells: <DataCell>[
                          //     DataCell(Text("Tentang")),
                          //     DataCell(Text("\n" +
                          //         "Dibuatnya aplikasi ini untuk mendukung penyebaran informasi yang lebih valid kepada masyarakat")),
                          //   ],
                          // ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
