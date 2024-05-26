import 'package:flutter/material.dart';

class StateFulW extends StatefulWidget {
  Color? color2;
  StateFulW({super.key, this.color2});

  @override
  State<StateFulW> createState() => _StateFulWState();
}

class _StateFulWState extends State<StateFulW> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: widget.color2,
    );
  }
}
