import 'package:flutter/material.dart';

class Lec8screen extends StatefulWidget {
  const Lec8screen({super.key});

  @override
  State<Lec8screen> createState() => _Lec8screenState();
}

class _Lec8screenState extends State<Lec8screen> {
  int? studentCount;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    studentCount = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("lec 8 screen")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Student count : $studentCount"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  studentCount = studentCount! + 1;
                });
              },
              child: Text("Increase")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  studentCount = studentCount! - 1;
                });
              },
              child: Text("Decrease")),
        ],
      )),
    );
  }
}
