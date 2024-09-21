import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'forgot_password_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(), // Starting page
    );
  }
}
