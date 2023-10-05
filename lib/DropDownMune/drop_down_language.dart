import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_projects/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../providers/my_provider.dart';

class DropDownLanguage extends StatefulWidget {
  DropDownLanguage({super.key});

  @override
  State<DropDownLanguage> createState() => _DropDownLanguageState();
}

class _DropDownLanguageState extends State<DropDownLanguage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    String? selectedValue;
    provider.languageCode == "en"
        ? selectedValue = AppLocalizations.of(context)!.english
        : selectedValue = AppLocalizations.of(context)!.arabic;

    return SizedBox(
      child: SizedBox(
        width: double.infinity,
        child: DropdownButton(
          dropdownColor: provider.mode == ThemeMode.light
              ? MyTheme.primaryColor
              : const Color(0xff141A2E),
          items: dropdownItemsLanguage(),
          onChanged: (value) async{
            value == AppLocalizations.of(context)!.english
                ? provider.changeLanguage("en")
                : provider.changeLanguage("ar");
            selectedValue = value;
            setState(() {});
          },
          value: selectedValue,
          borderRadius: BorderRadius.circular(25),
          //   dropdownColor: Colors.red,
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> dropdownItemsLanguage() {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          value: AppLocalizations.of(context)!.english,
          child: Text(AppLocalizations.of(context)!.english)),
      DropdownMenuItem(
          value: AppLocalizations.of(context)!.arabic,
          child: Text(AppLocalizations.of(context)!.arabic)),
    ];
    return menuItems;
  }
}
