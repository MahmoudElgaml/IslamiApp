import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/models/sura_model.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/providers/my_provider.dart';
import 'package:flutter_projects/providers/quran_screen_provider.dart';
import 'package:provider/provider.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = "sura";

  const SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
        create: (BuildContext context) => QuranProvider(),
        builder: (context, child) {
          var quranProvider=Provider.of<QuranProvider>(context);
          if (quranProvider.verses.isEmpty) {
            quranProvider.loadFile(args.index);
          }
          return Stack(
            children: [
              Image.asset(
                provider.mode == ThemeMode.light
                    ? "assets/images/background.png"
                    : "assets/images/bg_dark.png",
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Scaffold(
                appBar: AppBar(
                  title: Text(
                    args.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Theme.of(context).colorScheme.onBackground,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        thickness: 2,
                        endIndent: 30,
                        indent: 30,
                        color: MyTheme.primaryColor,
                      ),
                      itemBuilder: (context, index) => Text(
                        " ${quranProvider.verses[index]}(${index + 1})",
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      itemCount: quranProvider.verses.length,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
