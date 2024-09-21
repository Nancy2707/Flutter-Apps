import 'package:flutter/material.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to Sign In Page
              },
              child: Text('Back to Sign In Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text('Forgot Password'),
            ),
          ],
        ),
      ),
    );
  }
}
