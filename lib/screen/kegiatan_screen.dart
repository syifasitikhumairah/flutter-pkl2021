import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/kegiatan_controller.dart';

class KegiatanScreen extends StatelessWidget {
  const KegiatanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KegiatanController kegiatancontroller = Get.put(KegiatanController());
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
        title: Text("Kegiatan"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Obx(
        () => kegiatancontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: kegiatancontroller.kegiatanList.length,
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
                            Text(kegiatancontroller.kegiatanList[index].judul
                                .toString()),
                            Text(kegiatancontroller
                                .kegiatanList[index].keterangan
                                .toString()),
                            Text(kegiatancontroller.kegiatanList[index].tanggal
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
