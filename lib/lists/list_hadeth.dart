import 'package:flutter/material.dart';

class ListHadeth extends StatelessWidget {
  List<String> hadeth;

  ListHadeth(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => Text(
          hadeth[index],
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        itemCount: hadeth.length,
      ),
    );
  }
}
