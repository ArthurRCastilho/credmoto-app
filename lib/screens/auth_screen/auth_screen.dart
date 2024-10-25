import 'package:credmoto/screens/auth_screen/widgets/auth_form.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/CredmotoLogo.jpg'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: AuthForm(),
            ),
          ],
        ),
      ),
    );
  }
}
