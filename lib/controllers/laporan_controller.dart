import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:simpondok/services/laporan_service.dart';

import '../models/laporan_model.dart';

class LaporanController extends GetxController {
  var laporanList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchLaporanData();
  }

  void fetchLaporanData() async {
    try {
      isLoading(true);
      var laporan = await LaporanService.fetchLaporanData();
      laporanList.value = laporan.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
