import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class DropDownTheming extends StatefulWidget {
  const DropDownTheming({Key? key}) : super(key: key);

  @override
  State<DropDownTheming> createState() => _DropDownThemingState();
}

class _DropDownThemingState extends State<DropDownTheming> {
  String? selectedValue = "Light";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SizedBox(
      width: double.infinity,
      child: DropdownButton(
        borderRadius: BorderRadius.circular(25),
        items: dropdownItemsTheming(),
        onChanged: (value) {
          value=="Light"?provider.changeTheme(ThemeMode.light):provider.changeTheme(ThemeMode.dark);
          selectedValue = value;
          setState(() {});
        },
        value: selectedValue,
      ),
    );
  }

  List<DropdownMenuItem<String>> dropdownItemsTheming() {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Light", child: Text("Light")),
      const DropdownMenuItem(value: "Dark", child: Text("Dark")),
    ];
    return menuItems;
  }
}
