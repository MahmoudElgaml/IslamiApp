import 'package:flutter/material.dart';
import 'package:flutter_projects/DropDownMune/drop_down_language.dart';
import 'package:flutter_projects/DropDownMune/drop_down_theming.dart';
import 'package:flutter_projects/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          DropDownLanguage(),
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.bodySmall,
            ),
           const DropDownTheming(),
          ],
        ),
      ),
    );
  }
}
