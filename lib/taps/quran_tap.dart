import 'package:flutter/material.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_projects/screens/quran_screen.dart';
import 'package:flutter_projects/models/sura_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTap extends StatelessWidget {
  List<String> Suras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranTap({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        //  crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/quran_image.png",
            height: MediaQuery.of(context).size.height*.34,
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
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color:Theme.of(context).colorScheme.onSecondary,
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
                    arguments: SuraModel(Suras[index], index),
                  );
                },
                child: Text(
                  Suras[index],
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )),
              itemCount: Suras.length,
            ),
          )
        ],
      ),
    );
  }
}
