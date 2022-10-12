import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/laporan_controller.dart';

class LaporanScreen extends StatelessWidget {
  const LaporanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LaporanController laporancontroller = Get.put(LaporanController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Laporan Donasi"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Obx(
        () => laporancontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: laporancontroller.laporanList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 300,
                        height: 200,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Nama Donatur : " +
                                laporancontroller.laporanList[index].nmDonatur
                                    .toString()),
                            Text("Email : " +
                                laporancontroller.laporanList[index].email
                                    .toString()),
                            Text("No Telepon : " +
                                laporancontroller.laporanList[index].telepon
                                    .toString()),
                            Text("Tanggal : " +
                                laporancontroller.laporanList[index].tanggal
                                    .toString()),
                            Text("Nominal : Rp." +
                                laporancontroller.laporanList[index].nominal
                                    .toString()),
                            Text("Keterangan : " +
                                laporancontroller.laporanList[index].keterangan
                                    .toString())
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
