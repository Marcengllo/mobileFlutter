import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String hintText;
  final TextStyle textStyle;
  final bool isObscure;

  const Mytextfield(
      {super.key,
      required this.hintText,
      required this.textStyle,
      required this.isObscure});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        obscureText: isObscure,
        style: textStyle,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}