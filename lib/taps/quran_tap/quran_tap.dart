import 'package:flutter/material.dart';
import 'package:flutter_projects/my_theme.dart';

import 'package:flutter_projects/screens/quran_screen/quran_screen.dart';
import 'package:flutter_projects/models/sura_model.dart';
import 'package:flutter_projects/taps/quran_tap/quran_tap_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class QuranTap extends StatefulWidget {
  QuranTap({super.key});

  @override
  State<QuranTap> createState() => _QuranTapState();
}

class _QuranTapState extends State<QuranTap> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => QuranTapProvider()..getSuraName(),
        builder: (context, child) {
          var provider = Provider.of<QuranTapProvider>(context);
          return Center(
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/quran_image.png",
                  height: MediaQuery.of(context).size.height * .34,
                ),
                Divider(
                  thickness: 2,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.suraName,
                      style: GoogleFonts.elMessiri(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Theme.of(context).colorScheme.onSecondary,
                      thickness: 2,
                      indent: 100,
                      endIndent: 100,
                    ),
                    itemBuilder: (context, index) => Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          SuraContent.routeName,
                          arguments: SuraModel(
                              provider.suraName[index].nama ?? "", index),
                        );
                      },
                      child: Text(
                        provider.suraName[index].nama ?? "",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )),
                    itemCount: provider.suraName.length,
                  ),
                )
              ],
            ),
          );
        });
  }
}
