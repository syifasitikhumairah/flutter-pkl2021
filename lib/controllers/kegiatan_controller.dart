import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:simpondok/services/kegiatan_service.dart';

import '../models/kegiatan_model.dart';

class KegiatanController extends GetxController {
  var kegiatanList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchKegiatanData();
  }

  void fetchKegiatanData() async {
    try {
      isLoading(true);
      var kegiatan = await KegiatanService.fetchKegiatanData();
      kegiatanList.value = kegiatan.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
