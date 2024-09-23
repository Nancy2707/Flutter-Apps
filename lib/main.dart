import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // Import the WelcomeScreen
import 'signup_page.dart'; // Import the SignUpPage
import 'login_page.dart'; // Import the LoginPage
import 'forgot_password_page.dart'; // Import the ForgotPasswordPage
import 'home.dart'; // Import the HomePage where API call happens

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(), // Remove const
        '/signup': (context) => SignUpPage(), // Remove const
        '/login': (context) => LoginPage(), // Remove const
        '/forgot-password': (context) => ForgotPasswordPage(), // Remove const
        '/home': (context) => HomePage(), // Remove const
      },
    );
  }
}
