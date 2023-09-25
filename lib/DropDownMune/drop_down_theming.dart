import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../my_theme.dart';
import '../providers/my_provider.dart';

class DropDownTheming extends StatefulWidget {
  const DropDownTheming({Key? key}) : super(key: key);

  @override
  State<DropDownTheming> createState() => _DropDownThemingState();
}

class _DropDownThemingState extends State<DropDownTheming> {

  @override
  Widget build(BuildContext context) {
    String? selectedValue ;
    var provider = Provider.of<MyProvider>(context);
    provider.mode==ThemeMode.light?selectedValue="Light":selectedValue="Dark";
    return SizedBox(
      width: double.infinity,
      child: DropdownButton(
          dropdownColor: provider.mode == ThemeMode.light
              ? MyTheme.primaryColor
              : const Color(0xff141A2E),
          borderRadius: BorderRadius.circular(25),
      items: dropdownItemsTheming(),
      onChanged: (value) {
       selectedValue=value;
        value == "Light" ? provider.changeTheme(ThemeMode.light) : provider
            .changeTheme(ThemeMode.dark);

        setState(() {});
      },
      value: selectedValue,
    ),);
  }

  List<DropdownMenuItem<String>> dropdownItemsTheming() {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Light", child: Text("Light")),
      const DropdownMenuItem(value: "Dark", child: Text("Dark")),
    ];
    return menuItems;
  }
}
