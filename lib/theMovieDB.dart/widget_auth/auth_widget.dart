import 'package:flut_themoviedb_220314_tren/theMovieDB.dart/Theme/app_button_style.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);
  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login to your account')),
      body: ListView(
        children: [
          SizedBox(height: 25),
          _FormWidget(),
          SizedBox(height: 30),
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle1 = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'In order to use the editing and rating capabilities of TMDB,
              as well as get personal recommendations you will need to login to your account. 
              If you do not have an account, registering for an account is free and simple. Click here to get started.',
              style: textStyle1),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.styleLinkButton,
              child: Text('Register')),
          SizedBox(height: 25),
          Text('click here to have it resent.', style: textStyle1),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.styleLinkButton,
              child: Text('Verification e-mail')),
        ],
      ),
    );
  }
} //class _HeaderWidget extends StatelessWidget

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);
  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String? errorText = null;

  void _auth() {
    //по нажатию кнопки login, обращаемся к контроллеру с текстовым полем, и берём у него текст, и присваиваем к переменной login1.
    final login1 = _loginTextController.text;
    final password1 = _passwordTextController.text;

    //мини проверка на валидность.
    if (login1 == 'admin' && password1 == 'admin') {
      errorText = null;
      print('open my App');
    } else {
      errorText = 'Неверный текст или пароль';
      print('Show error');
    }
    setState(() {
      //не обяз-но заворачивать сюда всю логику данной ф-ии, можно
      //добавить setState и позже.
    });
  }

  void _resetPassword() {
    print('reset Password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle2 = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    // final color1 = const Color(0xFF01B4E4);
    final color1 = const Color(0xff02B5E4);
    //(digital color meter) RGB 2,181,228 -> hex #02B5E4

    final textFieldDecor1 = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      isCollapsed: true,
    );

    final errorText = this.errorText; // ??? Зачем нужна эта строка?

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(color: Colors.red, fontSize: 17),
          ),
          SizedBox(height: 21),
        ],
        /* добавим "..." (Spread operator) это означает, что, если erorrText не равен null, 
        то надо добавить подмассив с двумя виджетами Text & SizedBox и остальные виджеты. 
          Тем самым мы добились, того что, при прав-м вводе полей, у нас исчезает SizedBox(height: 21),
          а при не правильном он появл-ся.       
         */
        Text(
          'Username',
          style: textStyle2,
        ),
        SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecor1,
        ),
        SizedBox(height: 20),
        Text(
          'Password',
          style: textStyle2,
        ),
        SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecor1,
          obscureText: true,
        ),
        SizedBox(height: 25),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color1),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 18)),
              ),
              child: Text('Login'),
            ),
            SizedBox(width: 20),
            TextButton(
              onPressed: _resetPassword,
              style: AppButtonStyle.styleLinkButton,
              child: Text('Reset password'),
            ),
          ],
        )
      ]),
    );
  }
} //class _FormWidget extends StatefulWidget
