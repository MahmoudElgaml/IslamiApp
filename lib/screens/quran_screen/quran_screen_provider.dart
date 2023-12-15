import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/screens/quran_screen/QuranScreenDetail.dart';

import '../../models/sura_model.dart';
import '../../taps/quran_tap/QuranTapModel.dart';


class QuranProvider extends ChangeNotifier{
  List<String> verses = [];
  List<Ayat> ayat=[];
  final dio = Dio();


  getSuraDetail(int index) async {
    Response response;
    response = await dio.get('https://equran.id/api/v2/surat/$index');

    QuranScreenDetail quranScrenDetail = QuranScreenDetail.fromJson(response.data);
    ayat=quranScrenDetail.data?.ayat??[];
    notifyListeners();
  }
 loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraList = sura.split("\n");
    verses=suraList;
   notifyListeners();
  }

}
