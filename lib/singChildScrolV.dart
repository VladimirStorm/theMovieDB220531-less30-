// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:math';

class SingChildScrollView extends StatelessWidget {
  const SingChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> myList = [];
    for (int i = 0; i < 140; i++) {
      final numbRandom = Random().nextInt(100);
      Widget myWidg = Text('$i + $numbRandom',
          style: TextStyle(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              fontSize: 25));
      myList.add(myWidg);
    }
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, children: myList),
      ),
    );
  }
}
