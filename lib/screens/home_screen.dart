import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/taps/ahades_tap.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/taps/quran_tap.dart';
import 'package:flutter_projects/taps/radio_tap.dart';
import 'package:flutter_projects/taps/setting_tap.dart';
import 'package:flutter_projects/taps/tsabeh_tap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: SalomonBottomBar(
            selectedItemColor: Colors.black,
            backgroundColor: MyTheme.primaryColor,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              SalomonBottomBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  title: Text(AppLocalizations.of(context)!.radioIcon)),
              SalomonBottomBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/sebha.png"),
                ),
                title: Text(AppLocalizations.of(context)!.tsapehIcon),
              ),
              SalomonBottomBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/ahades.png"),
                  ),
                  title: Text(AppLocalizations.of(context)!.hadithIcon)),
              SalomonBottomBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/quran_icon.png"),
                  ),
                  title: Text(AppLocalizations.of(context)!.quranIcon)),
              SalomonBottomBarItem(
                  icon: const Icon(Icons.settings),
                  title: Text(AppLocalizations.of(context)!.settingIcon)),
            ],
          ),
          body: bodies[index],
        ),
      ],
    );
  }

  List<Widget> bodies = [
    const RadioTap(),
    const TsabehTap(),
    const AhadesTap(),
    QuranTap(),
    const SettingTab()
  ];
}
