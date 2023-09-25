import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode mode=ThemeMode.light;

  void changeLanguage(String lCode) {
    languageCode = lCode;
    notifyListeners();
  }
  void changeTheme(ThemeMode m){
    mode=m;
    notifyListeners();
  }
}
