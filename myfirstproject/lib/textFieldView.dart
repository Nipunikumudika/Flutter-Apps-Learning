import 'package:flutter/material.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({super.key});
  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  String appBarTitle = "Text Field View";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
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

//This is only in forms
                  // validator(value){
                  //   if(value == null || value.isEmpty){
                  //     return 'Please enter sone text';
                  //   }
                  //   return null;
                  // },
                  onChanged: (value) {
                    debugPrint(value);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter Your Password",
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
