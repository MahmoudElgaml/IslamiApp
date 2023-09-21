import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/hadeth_model.dart';
import '../my_theme.dart';
import '../screens/hadeth_screen.dart';

class AhadethName extends StatefulWidget {
  const AhadethName({super.key});

  @override
  State<AhadethName> createState() => _AhadethNameState();
}

class _AhadethNameState extends State<AhadethName> {
  List<HadethModel> allhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allhadeth.isEmpty) {
      load();
    }
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: MyTheme.primaryColor,
          thickness: 3,
          indent: 30,
          endIndent: 30,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              HadethScreen.routName,
              arguments: HadethModel(
                allhadeth[index].title,
                allhadeth[index].content,
              ),
            );
          },
          child: Center(
              child: Text(
            allhadeth[index].title,
            style: Theme.of(context).textTheme.bodySmall,
          )),
        ),
        itemCount: allhadeth.length,
      ),
    );
  }

  load() async {
    String ahadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadeth = ahadeth.split("#");
    for (int i = 0; i < hadeth.length; i++) {
      List<String> lines = hadeth[i].trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      List<String> content = lines;
      allhadeth.add(HadethModel(title, content));
      setState(() {});
    }
  }
}
