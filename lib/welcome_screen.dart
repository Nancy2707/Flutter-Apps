import 'package:flutter/material.dart';
import 'signup_page.dart'; // Import the SignUpPage

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: SignUpPage(), // Default signup page
    );
  }
}
