// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? buttonColor;

  CustomTextButton({
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor ?? Colors.transparent),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
