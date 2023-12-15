import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/sura_model.dart';
import '../../taps/quran_tap/QuranTapModel.dart';

class QuranProvider extends ChangeNotifier{
  List<String> verses = [];
  final dio = Dio();


  getSuraDetail() async {

    Response response;
    response = await dio.get('https://equran.id/api/v2/surat');
    QuranTapModel quranTapModel = QuranTapModel.fromJson(response.data);
    //suraName = quranTapModel.data??[];
    notifyListeners();
  }
 loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraList = sura.split("\n");
    verses=suraList;
   notifyListeners();
  }

}
