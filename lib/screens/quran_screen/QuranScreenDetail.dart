class QuranScreenDetail {
  QuranScreenDetail({
      this.code, 
      this.message, 
      this.data,});

  QuranScreenDetail.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? code;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
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

      this.ayat, 
     });

  Data.fromJson(dynamic json) {
    nomor = json['nomor'];
    nama = json['nama'];
    namaLatin = json['namaLatin'];
    jumlahAyat = json['jumlahAyat'];
    tempatTurun = json['tempatTurun'];
    arti = json['arti'];
    deskripsi = json['deskripsi'];

    if (json['ayat'] != null) {
      ayat = [];
      json['ayat'].forEach((v) {
        ayat?.add(Ayat.fromJson(v));
      });
    }

  }
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;

  List<Ayat>? ayat;



}



class Ayat {
  Ayat({
      this.nomorAyat, 
      this.teksArab, 
      this.teksLatin, 
      this.teksIndonesia, 
      });

  Ayat.fromJson(dynamic json) {
    nomorAyat = json['nomorAyat'];
    teksArab = json['teksArab'];
    teksLatin = json['teksLatin'];
    teksIndonesia = json['teksIndonesia'];

  }
  int? nomorAyat;
  String? teksArab;
  String? teksLatin;
  String? teksIndonesia;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nomorAyat'] = nomorAyat;
    map['teksArab'] = teksArab;
    map['teksLatin'] = teksLatin;
    map['teksIndonesia'] = teksIndonesia;

    return map;
  }

}







