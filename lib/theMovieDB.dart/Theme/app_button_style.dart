import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle styleLinkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(
      Color(0xff02B5E4),
    ),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );
}
