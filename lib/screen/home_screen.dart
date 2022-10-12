import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import '../controllers/kegiatan_controller.dart';
import 'package:simpondok/screen/kegiatan_screen.dart';
import '../controllers/laporan_controller.dart';
import 'package:simpondok/screen/laporan_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> _widgetOptions = <Widget>[
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final KegiatanController kegiatancontroller = Get.put(KegiatanController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("SIM Pondok Yatim",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0)),
          // centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView(children: [
          Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 0, bottom: 0),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/img/welcome.png'),
                              fit: BoxFit.cover))),
                  Container(
                    padding: EdgeInsets.only(top: 0, bottom: 20),
                    width: 300,
                    height: 80,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "Kegiatan",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KegiatanScreen(),
                              ));
                        }),
                  ),
                  Center(
                    child: Text("TENTANG KAMI",
                        style: TextStyle(color: Colors.black, fontSize: 25.0)),
                  ),
                  Card(
                    margin: const EdgeInsets.only(
                      left: 60,
                      right: 60,
                      top: 10,
                      bottom: 20,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            spreadRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 0, bottom: 0),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                          // borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/img/anak.jpg'),
                              fit: BoxFit.cover))),
                  Card(
                    // margin: EdgeInsets.all(5),
                    color: Colors.white,
                    child: Container(
                        child: Container(
                      padding: const EdgeInsets.only(
                        left: 80,
                        right: 60,
                        top: 20,
                      ),
                      width: double.infinity,
                      height: 120,
                      child: Text(
                          "Terwujudnya Lembaga Amil Zakat Nasional yang unggul, amanah dan berperan aktif dalam pembangunan sumberdaya manusia berdasarkan pemberdayaan. ",
                          style:
                              TextStyle(color: Colors.black, fontSize: 15.0)),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: 300,
                    height: 80,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "Laporan",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LaporanScreen(),
                              ));
                        }),
                  ),
                  Card(
                    // margin: EdgeInsets.all(5),
                    color: Colors.white,
                    child: Container(
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          color: Colors.green.shade50,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(40),
                          width: double.infinity,
                          height: 250,
                          child: Text(
                              "قُلْ اِنَّ رَبِّيْ يَبْسُطُ الرِّزْقَ لِمَنْ يَّشَاۤءُ مِنْ عِبَادِهٖ وَيَقْدِرُ لَهٗ ۗوَمَآ اَنْفَقْتُمْ مِّنْ شَيْءٍ فَهُوَ يُخْلِفُهٗ ۚوَهُوَ خَيْرُ الرّٰزِقِيْنَ " +
                                  "\n"
                                      "Katakanlah, “Sungguh, Tuhanku melapangkan rezeki dan membatasinya bagi siapa yang Dia kehendaki di antara hamba-hamba-Nya.” Dan apa saja yang kamu infakkan, Allah akan menggantinya dan Dialah pemberi rezeki yang terbaik." +
                                  "\n"
                                      "(Q.S. Saba : 39)",
                              style: TextStyle(
                                  color: Colors.green.shade900,
                                  fontSize: 15.0)),
                        )),
                  ),
                ],
              ))
        ]));
  }
}
