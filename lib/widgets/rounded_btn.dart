// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  RoundedButton({required this.text, required this.onPressed, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // Set the button color
        onPrimary: Colors.white, // Set the text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Set the button border radius
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100), // Set padding
      ),
      child: isLoading
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : Text(text),
    );
  }
}
