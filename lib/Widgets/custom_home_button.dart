import 'package:flutter/material.dart';

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 140,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 253, 253),
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(blurRadius: 2),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Icon(Icons.abc), Text('data')],
      ),
    );
  }
}
