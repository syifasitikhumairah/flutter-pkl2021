import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/laporan_model.dart';

class LaporanService {
  static Future<LaporanModel> fetchLaporanData() async {
    final response = await http
        .get(Uri.parse('https://sim-pondok.herokuapp.com/api/laporan'));

    if (response.statusCode == 200) {
      var data = response.body;
      return LaporanModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
