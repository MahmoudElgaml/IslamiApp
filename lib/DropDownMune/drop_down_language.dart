import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class DropDownLanguage extends StatefulWidget {
  DropDownLanguage({super.key});

  @override
  State<DropDownLanguage> createState() => _DropDownLanguageState();
}

class _DropDownLanguageState extends State<DropDownLanguage> {
  String? selectedValue = "English";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return SizedBox(
      width: double.infinity,
      child: DropdownButton(
        items: dropdownItemsLanguage(),
        onChanged: (value) {
          value == "English"
              ? provider.changeLanguage("en")
              : provider.changeLanguage("ar");
          selectedValue = value;
          setState(() {});
        },
        value: selectedValue,
        borderRadius: BorderRadius.circular(25),
   //   dropdownColor: Colors.red,
      ),
    );

  }
  List<DropdownMenuItem<String>> dropdownItemsLanguage() {
    List<DropdownMenuItem<String>> menuItems = [
       DropdownMenuItem(value: "English", child: Text(AppLocalizations.of(context)!.english)),
       DropdownMenuItem(value: "Arabic", child: Text(AppLocalizations.of(context)!.arabic)),
    ];
    return menuItems;
  }

}
