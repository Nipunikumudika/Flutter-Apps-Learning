import 'package:flutter/material.dart';
import 'package:myfirstproject/controllers/userController.dart';
import 'package:myfirstproject/screens/lec9/lec9Screen3.dart';

import '../../models/user.dart';

class Lec9Screen2 extends StatefulWidget {
  const Lec9Screen2({super.key});

  @override
  State<Lec9Screen2> createState() => _Lec9Screen2State();
}

class _Lec9Screen2State extends State<Lec9Screen2> {
  UserController userController = UserController();

  void submit() {
    User user =
        User(id: "10223", name: "Kasun", age: 24, address: ["223", "Colombo"]);
    userController.setUser(user);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Lec9Screen3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 9")),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                submit();
              },
              child: const Text("login")),
          Text("Result : ")
        ]),
      ),
    );
  }
}
