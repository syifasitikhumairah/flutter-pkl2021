class KegiatanModel {
  bool? success;
  String? message;
  List<Data>? data;

  KegiatanModel(
      {required this.success, required this.message, required this.data});

  KegiatanModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? judul;
  String? tanggal;
  String? cover;
  String? keterangan;

  Data(
      {required this.judul,
      required this.tanggal,
      required this.cover,
      required this.keterangan});

  Data.fromJson(Map<String, dynamic> json) {
    judul = json['judul'];
    tanggal = json['tanggal'];
    cover = json['cover'];
    keterangan = json['keterangan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['judul'] = this.judul;
    data['tanggal'] = this.tanggal;
    data['cover'] = this.cover;
    data['keterangan'] = this.keterangan;
    return data;
  }
}
