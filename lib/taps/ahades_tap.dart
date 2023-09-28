import 'package:flutter/material.dart';
import 'package:flutter_projects/lists/list_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/my_theme.dart';

class AhadesTap extends StatelessWidget {
  const AhadesTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/ahadeth_image.png",
            height: MediaQuery.of(context).size.height * .34,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          Text(
            AppLocalizations.of(context)!.hadithIcon,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          const ListAhadethName(),
        ],
      ),
    );
  }
}
