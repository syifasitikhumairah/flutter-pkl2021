import 'package:get/instance_manager.dart';

import 'controllers/kegiatan_controller.dart';
import 'controllers/laporan_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<KegiatanController>(KegiatanController());
    Get.put<LaporanController>(LaporanController());
  }
}
