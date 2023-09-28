import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/hadeth_model.dart';

class ListHadthProvider extends ChangeNotifier {
  List<HadethModel> allhadeth = [];

  loadHadeth() async {
    String ahadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadeth = ahadeth.split("#");
    for (int i = 0; i < hadeth.length; i++) {
      List<String> lines = hadeth[i].trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      List<String> content = lines;
      allhadeth.add(HadethModel(title, content));
      notifyListeners();
    }
  }
}