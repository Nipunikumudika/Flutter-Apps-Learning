import 'package:flutter/material.dart';
import 'package:myfirstproject/theme/appTextStyles.dart';

import '../theme/appColors.dart';

class CustomButton extends StatelessWidget {
  String? buttonText;
  Color? buttonColor;
  CustomButton({super.key, required this.buttonText, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: buttonColor ??
                  Primary_Color, //if null came button color must be red
            ),
            child: Text(
              buttonText!,
              style: buttonTextStyle,
            )));
  }
}
