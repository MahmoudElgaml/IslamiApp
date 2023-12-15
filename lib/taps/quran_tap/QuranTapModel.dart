class QuranTapModel {
  QuranTapModel({
      this.code, 
      this.message, 
      this.data,});

  QuranTapModel.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  int? code;
  String? message;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.nomor, 
      this.nama, 
      this.namaLatin, 
      this.jumlahAyat, 
      this.tempatTurun, 
      this.arti, 
      this.deskripsi, 
      });

  Data.fromJson(dynamic json) {
    nomor = json['nomor'];
    nama = json['nama'];
    namaLatin = json['namaLatin'];
    jumlahAyat = json['jumlahAyat'];
    tempatTurun = json['tempatTurun'];
    arti = json['arti'];
    deskripsi = json['deskripsi'];

  }
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nomor'] = nomor;
    map['nama'] = nama;
    map['namaLatin'] = namaLatin;
    map['jumlahAyat'] = jumlahAyat;
    map['tempatTurun'] = tempatTurun;
    map['arti'] = arti;
    map['deskripsi'] = deskripsi;

    return map;
  }

}




