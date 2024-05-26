import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/controllers/testController.dart';
import 'package:myfirstproject/controllers/testController2.dart';

import '../../controllers/testC.dart';

class Lec13Screen2 extends StatefulWidget {
  const Lec13Screen2({super.key});

  @override
  State<Lec13Screen2> createState() => _Lec13Screen2State();
}

class _Lec13Screen2State extends State<Lec13Screen2> {
  // String? name;
  // int? age;
  final testController2 = Get.find<TestController2>();
  @override
  void initState() {
    super.initState();
    // ABC abc1 = ABC();
    // print(abc1.y!.toString() + " & " + ABC.x!.toString());

    // name = testController2.name.value;
    // age = testController2.age.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Lec 13 Screen 2")),
        body: Center(
          // child: Column(children: [Text("Hello $name and $age")]),
          child: Column(children: [
            Obx(() => Text(
                "Hello ${testController2.name} and ${testController2.age}"))
          ]),
        ));
  }
}
