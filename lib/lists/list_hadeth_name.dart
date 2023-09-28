import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/providers/list_hadeth_provider.dart';
import 'package:provider/provider.dart';

import '../models/hadeth_model.dart';
import '../my_theme.dart';
import '../screens/hadeth_screen.dart';

class ListAhadethName extends StatefulWidget {
  const ListAhadethName({super.key});

  @override
  State<ListAhadethName> createState() => _AhadethNameState();
}

class _AhadethNameState extends State<ListAhadethName> {


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (BuildContext context) =>ListHadthProvider(),
      builder: (context, child) {
        var provider=Provider.of<ListHadthProvider>(context);
        if (provider.allhadeth.isEmpty) {
         provider.loadHadeth();
        }
        return Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 15,),
            itemBuilder: (context, index) =>
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      HadethScreen.routName,
                      arguments: HadethModel(
                        provider.allhadeth[index].title,
                        provider.allhadeth[index].content,
                      ),
                    );
                  },
                  child: Center(
                      child: Text(
                        provider.allhadeth[index].title,
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall,
                      )),
                ),
            itemCount: provider.allhadeth.length,
          ),
        );

      });
  }


  }

