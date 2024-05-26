import 'package:flutter/material.dart';
import 'package:myfirstproject/controllers/userController.dart';

import '../../models/user.dart';

class Lec9Screen3 extends StatefulWidget {
  const Lec9Screen3({super.key});

  @override
  State<Lec9Screen3> createState() => _Lec9Screen3State();
}

class _Lec9Screen3State extends State<Lec9Screen3> {
  UserController userController = UserController();
  String? name;
  int? age;

  @override
  void initState() {
    super.initState();
    name = "Username";
    age = 0;
    loadUserDetail();
  }

  void loadUserDetail() {
    User? user = userController.getUser();
    if (user != null) {
      setState(() {
        name = user.name;
        age = user.age;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 9 Screen 3")),
      body: Center(
        child: Column(children: [Text("Welcome $name, $age")]),
      ),
    );
  }
}
