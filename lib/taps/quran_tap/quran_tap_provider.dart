import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'QuranTapModel.dart';

class QuranTapProvider extends ChangeNotifier{
  final dio = Dio();
  List<Data>suraName=[];

 Future<Response>getSuraName() async {
    Response response;
    response = await dio.get('https://equran.id/api/v2/surat');
    QuranTapModel quranTapModel = QuranTapModel.fromJson(response.data);
    suraName = quranTapModel.data??[];
    notifyListeners();
    return response;
  }

}


