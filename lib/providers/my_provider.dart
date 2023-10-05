import 'package:flutter/material.dart';
import 'package:flutter_projects/sharedper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode mode = ThemeMode.light;
  var lang;
  var theme;

  void init() {
    lang = Sharedpref.getLang();
    theme = Sharedpref.getTheme();
    changeLanguage(lang ?? "en");
    changeTheme(theme??true);
  }
  void changeLanguage(String lCode) async {
    languageCode = lCode;
    await Sharedpref.setLang(lCode);
    notifyListeners();
  }
  changeTheme(bool theme) async {
    theme == true ? mode = ThemeMode.light : mode = ThemeMode.dark;
   await Sharedpref.setTheme(theme);
    notifyListeners();
  }

}
