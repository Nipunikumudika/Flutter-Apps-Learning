import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/testController2.dart';

class ExampleScreen2 extends StatefulWidget {
  const ExampleScreen2({super.key});

  @override
  State<ExampleScreen2> createState() => _ExampleScreen2State();
}

class _ExampleScreen2State extends State<ExampleScreen2> {
  final testController2 = Get.find<TestController2>();
  TextEditingController ageCtrl = TextEditingController();

  void changeAge() {
    int newAge = int.parse(ageCtrl.text);
    testController2.updateAge(newAge);
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
          Text("Hello!"),
          Obx(() => Text("Name: ${testController2.user.value.name}")),
          Obx(() => Text("Age: ${testController2.user.value.age}")),
          Obx(() => Text("Id: ${testController2.user.value.id}")),
          Container(
            width: 300,
            child: TextField(
              controller: ageCtrl,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              changeAge();
            },
            child: const Text("Submit new value"),
          ),
          Obx(() => Text("Observable Value : ${testController2.age}")),
        ],
      )),
    );
  }
}
