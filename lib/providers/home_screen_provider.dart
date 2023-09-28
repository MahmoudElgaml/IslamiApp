import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int index = 0;

  theCurrentIndex(int value) {
    index = value;
    notifyListeners();
  }
}
