import 'package:flutter/material.dart';


class MyStackExp extends StatelessWidget {
  const MyStackExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(alignment: AlignmentDirectional.topEnd, children: [
      Container(color: Colors.red, width: 200, height: 200),
      Positioned(child: Text('Change'), top: 10, right: 20),
      Positioned(child: Text('🌼 🌏', style: TextStyle(fontSize: 50)),
          bottom: 10,
          left: 15)
    ]));
  }
}
