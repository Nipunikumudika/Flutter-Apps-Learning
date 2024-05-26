import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/lec14/lec14Screen2.dart';
import 'package:myfirstproject/utils/databaseSetup.dart';

class Lec14Screen1 extends StatefulWidget {
  const Lec14Screen1({super.key});

  @override
  State<Lec14Screen1> createState() => _Lec14Screen1State();
}

class _Lec14Screen1State extends State<Lec14Screen1> {
  void setupDB() {
    DatabaseSetup databaseSetup = DatabaseSetup();
    databaseSetup.setUpDB();
    databaseSetup.CreateToDoTaskTable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lec 14 Screen 1"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setupDB();
            },
            child: const Text("Setup db"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Lec14Screen2()));
            },
            child: const Text("Go Todo"),
          ),
        ],
      )),
    );
  }
}
