import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/lec7/lec7Screen2.dart';
import 'package:myfirstproject/widgets/profileCard.dart';
import 'package:myfirstproject/widgets/customButton.dart';

class Lec7Screen extends StatefulWidget {
  const Lec7Screen({super.key});

  @override
  State<Lec7Screen> createState() => _Lec7ScreenState();
}

class _Lec7ScreenState extends State<Lec7Screen> {
  List names = ["Nipuni", "Kumudika", "Ama", "Nadeesh"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Lec 6")),
        body: Center(
          child: Column(children: [
            CustomButton(buttonText: "Login"),
            CustomButton(
              buttonText: "Login",
              buttonColor: Colors.yellow,
            ),
            ProfileCard(
              profileName: names[0],
            ),
            ProfileCard(
              profileName: names[1],
            ),
            ProfileCard(
              profileName: names[2],
            ),
            ProfileCard(
              profileName: names[3],
            ),
            ElevatedButton(
                onPressed: () {
                  //Go next Page and come back
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Lec7Screen2()));
                },
                child: Text("Go Next")),
            ElevatedButton(
                onPressed: () {
                  //Go next Page and no come back and remove previous screen
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Lec7Screen2()));
                },
                child: Text("Go Next No Come")),
//logout - clear all screens
            //  ElevatedButton(
            // onPressed: () {
            //   //Go next Page and no come back and remove previous screen
            //   Navigator.pushAndRemoveUntil(context,
            //       MaterialPageRoute(builder: (context) => Lec7Screen2()));
            // },
            // child: Text("Go Next No Come"))
          ]),
        ));
  }
}
