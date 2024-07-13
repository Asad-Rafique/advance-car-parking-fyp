import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;

  CircularButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      iconSize: 30.0,
      padding: EdgeInsets.all(15.0),
      splashRadius: 30.0,
      tooltip: 'Back',
    );
  }
}
