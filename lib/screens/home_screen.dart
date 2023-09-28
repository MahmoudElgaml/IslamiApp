import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/home_screen_provider.dart';
import 'package:flutter_projects/taps/ahades_tap.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/taps/quran_tap.dart';
import 'package:flutter_projects/taps/radio_tap.dart';
import 'package:flutter_projects/taps/setting_tap.dart';
import 'package:flutter_projects/taps/tsabeh_tap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../providers/my_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return ChangeNotifierProvider(
        create: (BuildContext context) => HomeProvider(),
        builder: (context, child) {
          var homeProvider = Provider.of<HomeProvider>(context);
        return  Stack(
            children: [
              Image.asset(
                provider.mode == ThemeMode.light
                    ? "assets/images/background.png"
                    : "assets/images/bg_dark.png",
                width: MediaQuery.of(context).size.width,
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
                  selectedItemColor: Theme.of(context).colorScheme.error,
                  unselectedItemColor: Colors.white,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  currentIndex: homeProvider.index,
                  onTap: (value) {
                    homeProvider.theCurrentIndex(value);
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
                      icon: const Icon(
                        Icons.settings,
                      ),
                      title: Text(AppLocalizations.of(context)!.settingIcon),
                    ),
                  ],
                ),
                body: bodies[homeProvider.index],
              ),
            ],
          );
        });
  }

  List<Widget> bodies = [
    const RadioTap(),
    const TsabehTap(),
    const AhadesTap(),
    QuranTap(),
    const SettingTab()
  ];
}
