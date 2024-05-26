import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/screens/lec12/lec12Screen.dart';

class Lec12Screen2 extends StatefulWidget {
  const Lec12Screen2({super.key});

  @override
  State<Lec12Screen2> createState() => _Lec12Screen2State();
}

class _Lec12Screen2State extends State<Lec12Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lec 12 Screen 2"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Get.to(Lec12Screen());
        },
        child: Text("Go to SCreen 1"),
      )),
    );
  }
}
