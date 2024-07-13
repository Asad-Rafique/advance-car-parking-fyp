// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';


class GradientColors {
  static final LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(0, 0, 0, 1),
      Color.fromRGBO(51, 182, 135, 1),
      Color.fromRGBO(2, 56, 37, 1),
    ],
  );
}


// Import your gradient color file



class TextStyles {
  static TextStyle gradientTextStyle(BuildContext context, double textSize) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: textSize,
      foreground: Paint()
        ..shader = LinearGradient(
          colors: GradientColors.primaryGradient.colors,
        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
    );
  }
}


class ButtonStyles {
  static ButtonStyle gradientButtonStyle(BuildContext context, double textSize) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.9;

    return ElevatedButton.styleFrom(
      primary: Colors.white, // Set the button color
      onPrimary: Colors.white, // Set the text color
      textStyle: TextStyles.gradientTextStyle(context, textSize),
      minimumSize: Size(buttonWidth, 60), // Set the button size
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Set border radius as needed
        side: BorderSide(color: Colors.black), // Set border color
      ),
    );
  }
}

  

     
    
