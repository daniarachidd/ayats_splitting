import 'package:flutter/material.dart';

class letterButton extends StatelessWidget {
  final String letter;
  const letterButton({Key? key, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: Center(
        child: Text(
          letter,
          style: TextStyle(fontFamily: 'idk', fontSize: 20),
        ),
      ),
    );
  }
}
