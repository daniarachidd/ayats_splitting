import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class appText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final w;

  appText(
      {Key? key,
      this.size = 20,
      required this.text,
      this.color = Colors.black,
      this.w = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: w),
    );
  }
}
