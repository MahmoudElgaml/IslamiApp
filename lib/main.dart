import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/my_provider.dart';
import 'package:flutter_projects/screens/hadeth_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/screens/quran_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => MyProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale:  Locale(provider.languageCode),
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => const HomeScreen(),
        SuraContent.routeName: (context) => const SuraContent(),
        HadethScreen.routName: (context) => const HadethScreen(),
      },
    );
  }
}
