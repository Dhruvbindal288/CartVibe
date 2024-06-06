import 'dart:async';
import 'package:cartvibe/Screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'CartVibe',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 24, color: Colors.white),
          ),
          Text(
            'Made By Dhruv Bindal',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
