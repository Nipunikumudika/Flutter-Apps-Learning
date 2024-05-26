import 'package:flutter/material.dart';

class TextFieldView2 extends StatefulWidget {
  const TextFieldView2({super.key});
  @override
  State<TextFieldView2> createState() => _TextFieldView2State();
}

class _TextFieldView2State extends State<TextFieldView2> {
  String appBarTitle = "Text Field View";
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              usernameInputWidget(),
            ],
          )),
    );
  }

//inclass widget
  Widget usernameInputWidget() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: nameController,
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
