import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/sepha_provider.dart';
import 'package:provider/provider.dart';

class TsabehTap extends StatefulWidget {
  const TsabehTap({super.key});

  @override
  State<TsabehTap> createState() => _TsabehTapState();
}

class _TsabehTapState extends State<TsabehTap> {
  List<String> tsapeh = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لاحول ولا قوه الا بالله",
    "استغفر الله"
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => SephaProvider(),
        builder: (context, child) {
          var provider = Provider.of<SephaProvider>(context);
          return Center(
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                provider.theLogic();
              },
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .4,
                      child: Image.asset(
                        "assets/images/allsepha.png",
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "عدد التسبيحات",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * .1,
                      width: 69,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        "${provider.counter}",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      tsapeh[provider.i],
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
