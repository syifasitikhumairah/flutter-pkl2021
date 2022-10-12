class LaporanModel {
  bool? success;
  String? message;
  List<Data>? data;

  LaporanModel({required this.success, required this.message, required this.data});

  LaporanModel.fromJson(Map<String, dynamic> json) {
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
  String? nmDonatur;
  String? email;
  String? telepon;
  String? tanggal;
  int? nominal;
  String? keterangan;
  String? cover;

  Data(
      {required this.nmDonatur,
      required this.email,
      required this.telepon,
      required this.tanggal,
      required this.nominal,
      required this.keterangan,
      required this.cover});

  Data.fromJson(Map<String, dynamic> json) {
    nmDonatur = json['nm_donatur'];
    email = json['email'];
    telepon = json['telepon'];
    tanggal = json['tanggal'];
    nominal = json['nominal'];
    keterangan = json['keterangan'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nm_donatur'] = this.nmDonatur;
    data['email'] = this.email;
    data['telepon'] = this.telepon;
    data['tanggal'] = this.tanggal;
    data['nominal'] = this.nominal;
    data['keterangan'] = this.keterangan;
    data['cover'] = this.cover;
    return data;
  }
}