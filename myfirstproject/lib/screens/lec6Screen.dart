import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/stateFulW.dart';

import 'stateLessW.dart';

class Lec6Screen extends StatefulWidget {
  const Lec6Screen({super.key});

  @override
  State<Lec6Screen> createState() => _Lec6ScreenState();
}

class _Lec6ScreenState extends State<Lec6Screen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 6")),
      body: Center(
          child: Column(
        children: [
          usernameInputWidget(nameController),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(50),
            color: Colors.green,
            child: childContainer(c: Colors.red, text: "Hello"),
          ),
          // Container(
          //   width: 200,
          //   height: 200,
          //   padding: const EdgeInsets.all(50),
          //   color: Colors.blue,
          //   child: StateLessW(
          //     color1: Colors.yellow,
          //   ),
          // ),
          // Container(
          //   width: 200,
          //   height: 200,
          //   padding: const EdgeInsets.all(50),
          //   color: Colors.black,
          //   child: StateFulW(color2: Colors.pink),
          // ),
          ElevatedButton(
              onPressed: () {
                print(nameController.text);
              },
              child: const Text("Click"))
        ],
      )),
    );
  }

  Widget childContainer({Color? c, String? text}) {
    return Container(
      width: 100,
      height: 100,
      color: c,
      child: Text(text!),
      alignment: Alignment.center,
    );
  }

  Widget usernameInputWidget(TextEditingController ctrl) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: ctrl,
        decoration: const InputDecoration(
          focusColor: Colors.white,
          prefixIcon: Icon(
            Icons.person_outline_rounded,
            color: Colors.grey,
          ),
          //errorText: "Error",
          border: OutlineInputBorder(),
          labelText: "Username",
          hintText: "Enter Your Name",
        ),
        onChanged: (value) {
          debugPrint(value);
        },
      ),
    );
  }
}
