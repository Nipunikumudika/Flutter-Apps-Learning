import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  String? profileName;
  ProfileCard({super.key, required this.profileName});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: 200,
      height: height * 0.10,
      margin: EdgeInsets.all(15),
      color: Colors.yellow,
      child: Text(profileName!),
    );
  }
}
