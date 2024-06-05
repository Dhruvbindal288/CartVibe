import 'package:flutter/material.dart';

class CutomTextField extends StatelessWidget {
  const CutomTextField(
      {super.key,
      required this.textEditingController,
      required this.isShow,
      required this.text});
  final TextEditingController textEditingController;
  final bool isShow;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: TextField(
        controller: textEditingController,
        obscureText: isShow,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: text,
        ),
      ),
    );
  }
}
