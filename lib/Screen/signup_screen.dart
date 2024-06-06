import 'package:cartvibe/Widgets/bg_container.dart';
import 'package:cartvibe/Widgets/custom-textField.dart';
import 'package:cartvibe/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: BgContainer(
          Column(
            children: [
              CutomTextField(
                  textEditingController: emailController,
                  isShow: false,
                  text: 'Email'),
              CutomTextField(
                  textEditingController: emailController,
                  isShow: true,
                  text: 'Username'),
              CutomTextField(
                  textEditingController: emailController,
                  isShow: false,
                  text: 'Phone Number'),
              CutomTextField(
                  textEditingController: emailController,
                  isShow: true,
                  text: 'Password'),
              CustomButton(text: 'SignUp', onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have An Account?',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Log in'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
