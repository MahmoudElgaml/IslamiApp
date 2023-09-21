import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color blackColor = const Color(0xff242424);
  static Color primaryColor = const Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          color: blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          color: blackColor,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ));
}
