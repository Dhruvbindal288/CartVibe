import 'package:cartvibe/Screen/login_screen.dart';
import 'package:cartvibe/Widgets/bg_container.dart';
import 'package:cartvibe/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        Column(
          children: [
            const Text(
              'Happy Shopping',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(text: 'Sign in with Google', onPressed: () {}),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
                text: 'Sign in with email',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
