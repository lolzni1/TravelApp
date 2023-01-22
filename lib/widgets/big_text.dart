import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/deminsion.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {super.key,
      this.color = Colors.black,
      this.size = 0,
      required this.text,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'PT Sans',
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight: FontWeight.w700),
    );
  }
}
