import 'package:flutter/material.dart';

class TsabehTap extends StatefulWidget {
  const TsabehTap({super.key});

  @override
  State<TsabehTap> createState() => _TsabehTapState();
}

class _TsabehTapState extends State<TsabehTap> {
  int counter = 0;
  int i = 0;
  List<String> tsapeh = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لاحول ولا قوه الا بالله",
    "استغفر الله"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          theLogic();
          setState(() {});
        },
        child: SizedBox(
          width: double.infinity,
          child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
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
                height: 81,
                width: 69,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  "$counter",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tsapeh[i],
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }

  theLogic() {
    if (counter <= 32) {
      counter++;
    } else {
      counter = 0;
      if (i < 4) {
        i++;
      } else {
        i = 0;
      }
    }
  }
}
