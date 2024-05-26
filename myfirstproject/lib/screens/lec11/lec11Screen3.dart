import 'package:flutter/material.dart';

class Lec11Screen3 extends StatefulWidget {
  const Lec11Screen3({super.key});

  @override
  State<Lec11Screen3> createState() => _Lec11Screen3State();
}

class _Lec11Screen3State extends State<Lec11Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lec11Screen3")),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
