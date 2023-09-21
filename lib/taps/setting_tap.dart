import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});


  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            padding: const EdgeInsets.all(7),
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),

            ),
            child: Text(
              "English",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Text(
            "Theming",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            padding: const EdgeInsets.all(7),
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),

            ),
            child: Text(
              "Light",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          DropdownButton(items: dropdownItems(), onChanged:  (value) {
            selectedValue=value;
             setState(() {

             });
          },value: selectedValue,)
        ],
      ),
    );
  }
  String ?selectedValue="English";

  List<DropdownMenuItem<String>> dropdownItems(){
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "English", child: Text("English")),
      const DropdownMenuItem(value: "Arabic", child: Text("Arabic")),

    ];
    return menuItems;
  }
}
