import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/my_provider.dart';
import 'package:flutter_projects/screens/hadeth_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/screens/quran_screen/quran_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/sharedper.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Sharedpref.pref = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => MyProvider()..init(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
      locale: Locale(provider.languageCode),
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.mode,
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
