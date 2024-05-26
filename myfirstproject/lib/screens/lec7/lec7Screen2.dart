import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/stateFulW.dart';

class Lec7Screen2 extends StatefulWidget {
  const Lec7Screen2({super.key});

  @override
  State<Lec7Screen2> createState() => _Lec7Screen2State();
}

class _Lec7Screen2State extends State<Lec7Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lec7Screen2"),
        leading: Container(),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Go Back"),
      )),
    );
  }
}
