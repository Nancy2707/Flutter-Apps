import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Forgot Password Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to previous page
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
