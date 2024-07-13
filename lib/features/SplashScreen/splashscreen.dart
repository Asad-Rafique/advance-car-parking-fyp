// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:async';
import 'package:advance_parking_our_fyp/features/StartScreen/start_screen.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:flutter/material.dart';
 // Import your second screen file

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  
  void startTimer() {
    const duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => StatScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
          child: Center(
            child: Image(
              image: AssetImage("images/logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
