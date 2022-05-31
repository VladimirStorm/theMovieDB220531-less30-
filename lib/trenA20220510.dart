// ignore: file_names
import 'package:flutter/material.dart';

class TrenA20220510 extends StatelessWidget {
  final List<TripleString> addingField = [
    TripleString(a1: 'hello1', a2: Icons.abc_sharp, a3: 'goodbye1'),
    TripleString(a1: 'hello2', a2: Icons.ac_unit, a3: 'goodbye2'),
    TripleString(a1: 'hello3', a2: Icons.add_alarm, a3: 'goodbye3'),
    TripleString(a1: 'hello4', a2: Icons.add_task, a3: 'goodbye4'),
  ];
  TrenA20220510({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> myFields =
        addingField.map((TripleString item) => TextWrapper(b1: item)).toList();
    return Column(children: myFields);
  }
}

class TextWrapper extends StatelessWidget {
  final TripleString b1;
  const TextWrapper({Key? key, required this.b1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(b1.a1, style: TextStyle(color: Colors.red, fontSize: 20)),
          Icon(b1.a2, size: 30, color: Colors.blue),
          Text(b1.a3, style: TextStyle(color: Colors.green, fontSize: 20))
        ]));
  }
}

class TripleString {
  final String a1, a3;
  final IconData a2;
  TripleString({required this.a1, required this.a2, required this.a3});
}
