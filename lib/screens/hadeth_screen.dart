import 'package:flutter/material.dart';
import 'package:flutter_projects/lists/list_hadeth.dart';
import 'package:flutter_projects/models/hadeth_model.dart';
import 'package:flutter_projects/my_theme.dart';

class HadethScreen extends StatelessWidget {
  static const String routName = "hadeth";

  const HadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
              "اسلامي",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              color: const Color.fromARGB(200, 255, 255, 255),
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    args.title,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Divider(
                    color: MyTheme.primaryColor,
                    thickness: 2,
                  ),
                  ListHadeth(args.content),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
