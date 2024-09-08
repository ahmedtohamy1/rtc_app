import 'package:flutter/material.dart';

class LoginWelcomeText extends StatelessWidget {
  const LoginWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome\n Back!',
      style: TextStyle(
          fontSize: 50, color: Colors.grey[300], fontWeight: FontWeight.bold),
    );
  }
}
