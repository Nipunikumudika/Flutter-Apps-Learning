import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/screens/lec12/lec12Screen.dart';

class Lec12Screen3 extends StatefulWidget {
  const Lec12Screen3({super.key});

  @override
  State<Lec12Screen3> createState() => _Lec12Screen3State();
}

class _Lec12Screen3State extends State<Lec12Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lec 12 Screen 3"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Get.to(Lec12Screen());
        },
        child: Text("Next"),
      )),
    );
  }
}
