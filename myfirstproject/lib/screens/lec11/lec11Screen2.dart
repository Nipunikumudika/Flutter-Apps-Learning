import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/lec11/lec11Screen3.dart';
import 'package:page_transition/page_transition.dart';

class Lec11Screen2 extends StatefulWidget {
  const Lec11Screen2({super.key});

  @override
  State<Lec11Screen2> createState() => _Lec11Screen2State();
}

class _Lec11Screen2State extends State<Lec11Screen2> {
  List<String> veggies = ['Broccoli', 'Carrot', 'Cucumber', 'mango', 'apple'];
  final List<Map> myProducts =
      List.generate(50, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec11Screen2")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.leftToRight,
                        duration: Duration(seconds: 1),
                        child: Lec11Screen3()));
              },
              child: Text("Go Next"))),
    );
  }
}
