import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/screens/lec12/lec12Screen2.dart';

class Lec12Screen extends StatefulWidget {
  const Lec12Screen({super.key});

  @override
  State<Lec12Screen> createState() => _Lec12ScreenState();
}

class _Lec12ScreenState extends State<Lec12Screen> {
  void changeLanguage(String lan) {
    if (lan == "English") {
      //change to eng
      var locale = Locale('en', 'US');
      Get.updateLocale(locale);
    } else {
      //change to sinhala
      var locale = Locale('si', 'LK');
      Get.updateLocale(locale);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lec 12 Screen 1"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome!".tr,
            style: TextStyle(fontSize: 30),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Get.to(Lec12Screen2());
          //   },
          //   child: Text("Go to screen 2"),
          // ),

          ElevatedButton(
            onPressed: () {
              changeLanguage("English");
            },
            child: Text("Change to English"),
          ),

          ElevatedButton(
            onPressed: () {
              changeLanguage("Sinhala");
            },
            child: Text("Change to Sinhala"),
          ),
        ],
      )),
    );
  }
}
