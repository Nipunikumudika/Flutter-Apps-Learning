import 'package:flutter/material.dart';

class Lec10Screen extends StatefulWidget {
  const Lec10Screen({super.key});

  @override
  State<Lec10Screen> createState() => _Lec10ScreenState();
}

class _Lec10ScreenState extends State<Lec10Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec10Screen")),
      // body: ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: const [
      //     ListTile(title: Text("title1"), subtitle: Text("Sub Title1")),
      //     ListTile(title: Text("title2"), subtitle: Text("Sub Title2")),
      //     ListTile(title: Text("title3"), subtitle: Text("Sub Title3")),
      //     ListTile(title: Text("title4"), subtitle: Text("Sub Title4")),
      //   ],
      // ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Image.network(
              'https://blog.udemy.com/wp-content/uploads/2020/09/Cat-Step-11-CW.jpg'),
          Image.network(
              'https://blog.udemy.com/wp-content/uploads/2020/09/Cat-Step-11-CW.jpg'),
          Image.network(
              'https://blog.udemy.com/wp-content/uploads/2020/09/Cat-Step-11-CW.jpg'),
          Image.network(
              'https://blog.udemy.com/wp-content/uploads/2020/09/Cat-Step-11-CW.jpg'),
          Image.network(
              'https://blog.udemy.com/wp-content/uploads/2020/09/Cat-Step-11-CW.jpg'),
        ],
      ),
    );
  }
}
