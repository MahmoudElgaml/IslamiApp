import 'package:flutter/material.dart';
import 'package:flutter_projects/my_theme.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/radio_image.png"),
        Text("اذاعه القران الكريم",style: Theme.of(context).textTheme.bodySmall,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_next,color: MyTheme.primaryColor,size: 50,),
            Icon(Icons.play_arrow,color: MyTheme.primaryColor,size: 50,),
            Icon(Icons.skip_previous,color: MyTheme.primaryColor,size: 50,)
          ],
        )

      ],
    );
  }
}
