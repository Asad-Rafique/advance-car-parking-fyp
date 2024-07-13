// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

   BoldText({
    required this.text,
    this.textStyle
   
   });
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    // Add other styling properties as needed,


    )
    );
  }
}