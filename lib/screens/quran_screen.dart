import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/models/sura_model.dart';
import 'package:flutter_projects/my_theme.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = "sura";

  const SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
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
              color: const Color(0xFFF8F8F8),
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
                  verses[index],
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ],
    );
  }

  loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
