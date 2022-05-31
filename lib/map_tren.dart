import 'package:flutter/material.dart';

class Map_Tren extends StatelessWidget {
  final List<DoubleString> dataMap = [
    DoubleString(dsText1: '1', dsText2: 'abc'),
    DoubleString(dsText1: '456', dsText2: 'def'),
    DoubleString(dsText1: '789', dsText2: 'ghj'),
    DoubleString(dsText1: '001', dsText2: 'klm'),
  ];

  Map_Tren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> mainField = dataMap
        .map((DoubleString exp) => TextWrapper(textFields1: exp))
        .toList();
    return Column(children: mainField);
  }
}

//(Border.all(color: Colors.black12, double width: 2.0, style: BorderStyle.solid),)
class TextWrapper extends StatelessWidget {
  final DoubleString textFields1;
  TextWrapper({Key? key, required this.textFields1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.pink,
            child: FittedBox(
              child: Text(
                textFields1.dsText1,
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
        ),
        Spacer(),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey,
            child: Text(
              textFields1.dsText2,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
        ),
      ],
    );
  }
}

class DoubleString {
  final String dsText1, dsText2;
  DoubleString({required this.dsText1, required this.dsText2});
}
