import 'package:cartvibe/Widgets/custom-textField.dart';
import 'package:flutter/material.dart';

import '../Widgets/animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const AnimationSlider(),
        ],
      )),
    );
  }
}
