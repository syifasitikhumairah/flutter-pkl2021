import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/kegiatan_model.dart';

class KegiatanService {
  static Future<KegiatanModel> fetchKegiatanData() async {
    final response = await http
        .get(Uri.parse('https://sim-pondok.herokuapp.com/api/kegiatan'));

    if (response.statusCode == 200) {
      var data = response.body;
      return KegiatanModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
