// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  SimpleText({
    required this.text,
    this.textStyle
    });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w100,
    // Add other styling properties as needed,


    )
    );
  }

}