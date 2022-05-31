import 'dart:ui';

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> menuRow1 = [
    MenuRowData(icon2: Icons.favorite_outline, text2: 'Избранное'),
    MenuRowData(icon2: Icons.call, text2: ' Звонки'),
    MenuRowData(icon2: Icons.computer, text2: 'Устройства'),
    MenuRowData(icon2: Icons.folder, text2: 'Папка с чатами'),
  ];

  final List<MenuRowData> menuRow2 = [
    MenuRowData(icon2: Icons.notifications, text2: 'Уведомление'),
    MenuRowData(icon2: Icons.privacy_tip, text2: 'Конфиденциальность'),
    MenuRowData(icon2: Icons.data_saver_off_sharp, text2: 'Данные и память'),
    MenuRowData(icon2: Icons.brush, text2: 'Оформление'),
    MenuRowData(icon2: Icons.language, text2: 'Язык'),
    MenuRowData(icon2: Icons.sticky_note_2_rounded, text2: 'Стикеры'),
  ];

  final List<MenuRowData> menuRow3 = [
    MenuRowData(icon2: Icons.lock_clock, text2: 'Apple Watch'),
  ];

  final List<MenuRowData> menuRow4 = [
    MenuRowData(icon2: Icons.help, text2: 'Помощь'),
    MenuRowData(icon2: Icons.question_answer, text2: 'Вопросы о Telegram'),
  ];

  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Настройки')),
      body: Container(
        width: double.infinity,
        // child: SingleChildScrollView( можно исп-ть этот виджет,т.к. мало строк.
        child: ListView(
          //вместо Column, поставили ListView.
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(menuRow: menuRow1),
            SizedBox(height: 30),
            _MenuWidget(menuRow: menuRow2),
            SizedBox(height: 30),
            _MenuWidget(menuRow: menuRow3),
            SizedBox(height: 30),
            _MenuWidget(menuRow: menuRow4),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon2;
  final String text2;

  MenuRowData({required this.icon2, required this.text2});
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menuRow
            .map((MenuRowData dataE) => _MenuWidgetRow(data3: dataE))
            .toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data3;
  const _MenuWidgetRow({Key? key, required this.data3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data3.icon2),
          SizedBox(width: 15),
          Expanded(child: Text(data3.text2)),
          SizedBox(width: 40),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 30),
              _AvatarWidget(),
              SizedBox(height: 30),
              _UserNameWidget(),
              SizedBox(height: 10),
              _UserPhoneWidget(),
              SizedBox(height: 10),
              _UserNickNameWidget(),
            ],
          ),
        ),
        Positioned(
          top: 25,
          right: 25,
          child: Text(
            'Изм.',
            style: TextStyle(
              fontSize: 17,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('E-mail: abc@gmail.com',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ));
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('+7 (123) 456 789 101',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ));
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Vladimir <Storm> Prada',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
