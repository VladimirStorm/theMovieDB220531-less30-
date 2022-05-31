import 'dart:math';

import 'package:flutter/material.dart';

class ExListView1 extends StatelessWidget {
  final List<TripleField> myListArray = [
    TripleField('f1 Button', '2 button', Icons.abc_rounded),
    TripleField('3 Button', '4 button', Icons.access_alarm),
    TripleField('5', '6 button', Icons.add_circle),
    TripleField('7 Button', '8 button', Icons.add_card)
  ];
  ExListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> newMyListArray = myListArray
        .map((TripleField item) => WrapperWidget(ww1: item))
        .toList();

    for (int i = 0; i < 140; i++) {
      final rr1 = Random();
      final TripleField rst = TripleField(rr1.nextInt(100).toString(),
          rr1.nextInt(1000).toString(), Icons.query_builder);
      newMyListArray.add(WrapperWidget(ww1: rst));
    }

    return ListView(
      reverse: false,
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: newMyListArray,
    );
  }
}

class WrapperWidget extends StatelessWidget {
  const WrapperWidget({Key? key, required this.ww1}) : super(key: key);
  final TripleField ww1;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      ElevatedButton(
        // ignore: avoid_returning_null_for_void
        onPressed: () => null,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: Text(ww1.aTriple,
            style: TextStyle(fontSize: 15), textAlign: TextAlign.left),
      ),
      TextButton(
        onPressed: () => null,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
        child: Text(ww1.bTriple,
            style: TextStyle(fontSize: 15), textAlign: TextAlign.left),
      ),
      IconButton(
        onPressed: () => print('Icon button is pushed'),
        icon: Icon(ww1.cTriple, size: 35),
        color: Color.fromARGB(255, 157, 98, 20),
      )
    ]);
  }
}

class TripleField {
  final String aTriple, bTriple;
  final IconData cTriple;
  TripleField(this.aTriple, this.bTriple, this.cTriple);
}
