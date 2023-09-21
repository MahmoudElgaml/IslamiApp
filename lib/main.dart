
import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/hadeth_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/screens/quran_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: const Locale("en"),
      theme:MyTheme.lightTheme ,
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routName ,
      routes: {
        HomeScreen.routName:(context) => const HomeScreen(),
        SuraContent.routeName:(context) => const SuraContent(),
        HadethScreen.routName:(context) => const HadethScreen(),
      },

    );
  }
}
