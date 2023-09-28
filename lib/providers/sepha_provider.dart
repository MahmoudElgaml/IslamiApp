import 'package:flutter/material.dart';

class SephaProvider extends ChangeNotifier{
  int counter = 0;
  int i = 0;
  theLogic() {
    if (counter <= 32) {
      counter++;
    } else {
      counter = 0;
      if (i < 4) {
        i++;
      } else {
        i = 0;
      }
    }
    notifyListeners();
  }



}