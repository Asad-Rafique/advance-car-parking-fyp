// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double percentage; // Value between 0 and 1 representing the fill percentage
  CustomProgressIndicator({Key? key, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.green,
            Colors.white,
            Colors.white,
          ],
          stops: [0.0, percentage, percentage, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),

      height: 13,
      width: 300,
    );
  }
}
