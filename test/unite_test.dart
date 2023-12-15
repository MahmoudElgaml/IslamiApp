import 'package:flutter_projects/screens/quran_screen/quran_screen_provider.dart';
import 'package:flutter_projects/taps/quran_tap/quran_tap_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  QuranTapProvider pro = QuranTapProvider();
  test(
    "fetch api",
    () async {
      bool done = false;
      var fetch = await pro.getSuraName();
      if (fetch!=null){
        done=true;
      }
      expect(done, true);
    },
  );
}
