import 'package:flut_themoviedb_220314_tren/listView1.dart';
import 'package:flut_themoviedb_220314_tren/map_tren.dart';
import 'package:flut_themoviedb_220314_tren/singChildScrolV.dart';
import 'package:flut_themoviedb_220314_tren/stack_tren.dart';
import 'package:flut_themoviedb_220314_tren/trenA20220510.dart';
import 'package:flut_themoviedb_220314_tren/telegram_screen.dart';

import 'package:flut_themoviedb_220314_tren/theMovieDB.dart/widget_auth/auth_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheMovieDB',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:const Color.fromRGBO(3, 37, 65, 1),
        ),
      ),
      home: AuthWidget(),
    );
  }
}
