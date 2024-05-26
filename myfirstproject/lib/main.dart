//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myfirstproject/screens/firebaseAppScreen/readAndWriteDataScreen.dart';
import 'package:myfirstproject/screens/firebaseAppScreen/signUpScreen.dart';
import 'package:myfirstproject/screens/firebaseAppScreen/uploadImageScreen.dart';
import 'package:myfirstproject/screens/lec10/lec10Screen2.dart';

import 'package:myfirstproject/screens/lec14/lec14Screen1.dart';
import 'package:myfirstproject/screens/lec15/Lec15Screen.dart';
import 'package:myfirstproject/screens/lec16/lec16Screen.dart';
import 'package:myfirstproject/screens/lec17/lec17Screen.dart';
import 'package:myfirstproject/screens/firebaseAppScreen/signInScreen.dart';
import 'package:myfirstproject/utils/appBind.dart';

import 'configs/languageConfig.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     Locale currentLang = Locale('en', 'US');
//     // return GetMaterialApp(
//     //   title: 'Flutter Demo',
//     //   theme: ThemeData(
//     //     primarySwatch: Colors.blue,
//     //   ),
//     //   translations: LanguageConfig(),
//     //   locale: currentLang,
//     //   fallbackLocale: Locale('en', 'US'),
//     //   //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     //   home: const Lec12Screen(),
//     // );

//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       home: const Lec15Screen(),
//     );

//     // return GetMaterialApp(
//     //   title: 'Flutter Demo',
//     //   theme: ThemeData(
//     //     primarySwatch: Colors.blue,
//     //   ),
//     //   translations: LanguageConfig(),
//     //   locale: currentLang,
//     //   fallbackLocale: Locale('en', 'US'),
//     //   initialBinding: AppBinding(),
//     //   //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     //   home: const ExampleScreen1(),
//     // );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("App bar title")),
//         backgroundColor: Colors.red,
//         body: Container(
//           width: 200,
//           height: 800,
//           color: Colors.green,
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround, //center,end
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Child 1",
//                 style: TextStyle(
//                     fontSize: 30, color: Colors.red, fontFamily: "Sed"),
//               ),
//               Text("Child 2"),
//               GestureDetector(
//                 onTap: () {
//                   debugPrint("Hi all");
//                 },
//                 child: Text("Child 3"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   debugPrint("ClickButton");
//                 },
//                 child: const Text("Login"),
//               ),
//               IconButton(
//                   onPressed: () => print("Hello World"),
//                   icon: Icon(Icons.settings)),
//               TextButton(onPressed: () {}, child: Text("See More")),
//               Container(
//                   width: 50,
//                   height: 25,
//                   child: Image(
//                     image: AssetImage("assets/images/4.png"),
//                     fit: BoxFit.fitHeight,
//                   )),
//               Container(
//                 width: 50,
//                 height: 25,
//                 child: Image(
//                     image: NetworkImage(
//                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-aBDBxegoNFLLcyAuqXtCKFOdtjJ7p_3m0g&usqp=CAU")),
//               ),
//               Icon(
//                 Icons.person,
//                 size: 40,
//                 color: Colors.red,
//               ),
//               Container(
//                   width: 50,
//                   height: 50,
//                   child: SvgPicture.asset(
//                     "assets/Icons/avatar-thinking-8-svgrepo-com.svg",
//                   )),
//             ],
//           ),
//         ));
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().whenComplete(() {
    debugPrint("fb connection is completed");
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale currentLang = Locale('en', 'US');
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: LanguageConfig(),
      locale: currentLang,
      fallbackLocale: Locale('en', 'US'),
      initialBinding: AppBinding(),
      home: const Lec10Screen2(), //Screen widget
    );
  }
}
