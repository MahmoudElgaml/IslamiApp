import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/sura_model.dart';

class QuranProvider extends ChangeNotifier{
  List<String> verses = [];
  loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraList = sura.split("\n");
    verses=suraList;
   notifyListeners();
  }

}
