import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Lec10Screen2 extends StatefulWidget {
  const Lec10Screen2({super.key});

  @override
  State<Lec10Screen2> createState() => _Lec10Screen2State();
}

class _Lec10Screen2State extends State<Lec10Screen2> {
  List<String> veggies = ['Broccoli', 'Carrot', 'Cucumber', 'mango', 'apple'];
  final List<Map> myProducts =
      List.generate(50, (index) => {"id": index, "name": "Product $index"})
          .toList();

  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "I am Data";
    });
  }

  Stream<int> generateNumbers = (() async* {
    await Future<void>.delayed(Duration(seconds: 2));

    for (int i = 1; i <= 5; i++) {
      await Future<void>.delayed(Duration(seconds: 1));

      yield i;
    }
  })();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec10Screen2")),
      // body: ListView.builder(
      //     itemCount: veggies.length,
      //     itemBuilder: (context, int index) {
      //       return Container(
      //           color: Colors.green,
      //           height: 30,
      //           margin: EdgeInsets.only(bottom: 10),
      //           child: Text(veggies[index]));
      //     }),

      // body: GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 200,
      //       childAspectRatio: 3 / 2,
      //       crossAxisSpacing: 5,
      //       mainAxisSpacing: 4),
      //   itemCount: veggies.length,
      //   itemBuilder: (BuildContext ctx, index) {
      //     return Container(
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //           color: Colors.amber, borderRadius: BorderRadius.circular(15)),
      //       child: Text(veggies[index]),
      //     );
      //   },
      // ),

      body: FutureBuilder(
        future: getData(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error} occurred',
                  style: TextStyle(fontSize: 18),
                ),
              );
            } else if (snapshot.hasData) {
              final data = snapshot.data as String;
              return Center(
                child: Text(
                  '$data',
                  style: TextStyle(fontSize: 18),
                ),
              );
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

      // body: StreamBuilder<int>(
      //   stream: generateNumbers,
      //   builder: (
      //     BuildContext context,
      //     AsyncSnapshot<int> snapshot,
      //   ) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return CircularProgressIndicator();
      //     } else if (snapshot.connectionState == ConnectionState.active ||
      //         snapshot.connectionState == ConnectionState.done) {
      //       if (snapshot.hasError) {
      //         return const Text('Error');
      //       } else if (snapshot.hasData) {
      //         return Text(snapshot.data.toString(),
      //             style: const TextStyle(color: Colors.teal, fontSize: 36));
      //       } else {
      //         return const Text('Empty data');
      //       }
      //     } else {
      //       return Text('State: ${snapshot.connectionState}');
      //     }
      //   },
      // ),

//       body: Stack(
//         children: <Widget>[
// // Max Size

//           Container(
//             width: 300,
//             height: 300,
//             color: Colors.green,
//           ),

//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//           ),

//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.yellow,
//           ),
//           Positioned(top: 30, right: 30, child: Text("Hello"))
//         ],
//       ),

      // body: Column(children: [
      //   Flexible(
      //       child: Container(
      //     color: Colors.yellow,
      //     height: 100,
      //   )),
      //   Container(
      //     color: Colors.red,
      //     width: 100,
      //     height: 100,
      //   )
      // ]),

      // body: Column(children: [
      //   Expanded(
      //       child: Container(
      //     color: Colors.yellow,
      //     height: 100,
      //   )),
      //   Container(
      //     color: Colors.red,
      //     width: 100,
      //     height: 100,
      //   )
      // ]),

      // body: Column(children: [
      //   Expanded(
      //       flex: 3,
      //       child: Container(
      //         color: Colors.yellow,
      //         height: 100,
      //       )),
      //   Expanded(
      //       flex: 1,
      //       child: Container(
      //         color: Colors.orange,
      //         height: 100,
      //       )),
      //   Container(
      //     color: Colors.red,
      //     width: 100,
      //     height: 100,
      //   )
      // ]),

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //   ]),
      // ),
    );
  }
}
