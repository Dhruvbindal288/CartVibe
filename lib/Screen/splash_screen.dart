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
        children: [
          Expanded(child: Text('CartVibe')),
          Expanded(child: Text('Made By Dhruv Bindal')),
        ],
      ),
    );
  }
}
