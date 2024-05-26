import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/controllers/testController2.dart';

import '../../controllers/testC.dart';
import '../../controllers/testController2.dart';
import 'lec13Screen2.dart';

class Lec13Screen1 extends StatefulWidget {
  const Lec13Screen1({super.key});

  @override
  State<Lec13Screen1> createState() => _Lec13Screen1State();
}

class _Lec13Screen1State extends State<Lec13Screen1> {
  final testController2 = Get.find<TestController2>();
  void submit() {
    // ABC abc = ABC();
    // ABC.x = 10;
    // abc.y = 5;
    // print(abc.y!.toString() + " & " + ABC.x!.toString());

    testController2.setName("Pasan");
    testController2.setAge(20);
    testController2.addName("Udhara");

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Lec13Screen2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lec 13 Screen 1"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              submit();
            },
            child: const Text("Login"),
          ),
        ],
      )),
    );
  }
}
