import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String TextButton;
  final Color backgroundColor;
  final Color textColor;
  final double radius;
  final double elevation;

  const MyButton({
    super.key,
    required this.TextButton,
    required this.backgroundColor,
    required this.textColor,
    required this.radius,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
             foregroundColor: textColor,
             elevation: elevation,
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)
             )),
        onPressed: () {},
        child: Text(TextButton));
  }
}
