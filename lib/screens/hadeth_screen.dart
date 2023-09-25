import 'package:flutter/material.dart';
import 'package:flutter_projects/lists/list_hadeth.dart';
import 'package:flutter_projects/models/hadeth_model.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethScreen extends StatelessWidget {
  static const String routName = "hadeth";

  const HadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
             AppLocalizations.of(context)!.title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              color: Theme.of(context).colorScheme.onBackground,
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
