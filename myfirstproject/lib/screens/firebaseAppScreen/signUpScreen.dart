import 'package:flutter/material.dart';
import 'package:myfirstproject/controllers/firebaseAppCtrl/userController2.dart';

import '../../controllers/firebaseAppCtrl/authController.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  void signUpUser() async {
    AuthController authController = AuthController();
    Map<String, dynamic>? output =
        await authController.signUpUser(emailCtrl.text, passwordCtrl.text);

    print(output); //{uid: 29393939448484sjsjhr}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign-Up Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Username"),
              TextField(
                controller: emailCtrl,
              ),
              Text("Password"),
              TextField(
                controller: passwordCtrl,
              ),
              ElevatedButton(
                  onPressed: () {
                    signUpUser();
                  },
                  child: const Text(
                    "Sign-Up",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
