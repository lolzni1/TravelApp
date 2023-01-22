import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText({
    super.key,
    this.color = Colors.black54,
    this.size = 12,
    this.height = 1.2,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          height: height,
          fontWeight: FontWeight.w400),
    );
  }
}
