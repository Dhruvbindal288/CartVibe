import 'package:cartvibe/Screen/signup_screen.dart';
import 'package:cartvibe/Widgets/bg_container.dart';
import 'package:cartvibe/Widgets/custom-textField.dart';
import 'package:cartvibe/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: BgContainer(
          Column(
            children: [
              CustomTextField(
                  textEditingController: emailController,
                  isShow: false,
                  text: 'Email'),
              CustomTextField(
                  textEditingController: emailController,
                  isShow: true,
                  text: 'Password'),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forget Password?'),
                ),
              ),
              CustomButton(text: 'Log in', onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t Have An Account?',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignUpScreen();
                        }));
                      },
                      child: const Text('Sign Up'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
