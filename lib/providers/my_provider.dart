import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";

  void changeLanguage(String lCode) {
    languageCode = lCode;
    notifyListeners();
  }
}