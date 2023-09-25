import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xfff5f5f5);
  static Color primaryColor = const Color(0xffB7935F);
  static Color darkColor = const Color(0xff141a2e);
  static ThemeData lightTheme = ThemeData(
     colorScheme: ColorScheme(brightness:Brightness.light,
          primary:primaryColor,
          onPrimary: Colors.white,
          secondary: Colors.black,
          onSecondary: primaryColor,
          error:Colors.black,
          onError: Colors.yellow,
          background:  const Color(0xFFc8b396),
          onBackground: Colors.white,
          surface:Colors.yellow,
          onSurface: Colors.yellow
      ),
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
  static ThemeData darkTheme = ThemeData(
       colorScheme:    ColorScheme(brightness:Brightness.dark,
           primary:darkColor,
           onPrimary: Colors.yellow,
           secondary: Colors.white,
           onSecondary: Colors.yellow,
           error:Colors.yellow,
           onError: Colors.yellow,
           background: const Color(0xff141A2E),
           onBackground: const Color(0xff141A2E),
           surface:Colors.yellow,
           onSurface: Colors.yellow
       ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          color: Colors.white
          ,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          color: Colors.yellow,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ));
}
