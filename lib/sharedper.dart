import 'package:shared_preferences/shared_preferences.dart';

class Sharedpref {
  static late SharedPreferences pref;

  static setLang(String lang) async {
    await pref.setString("mode", lang);
  }

  static String? getLang() {
    return pref.getString("mode");
  }

  static setTheme(bool value) {
    pref.setBool("theme", value);
  }

  static bool? getTheme() {
    return pref.getBool("theme");
  }
}
