// ignore_for_file: camel_case_types

import 'package:advance_parking_our_fyp/features/user/Auth/Admin_Login.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:flutter/material.dart';

import '../user/Auth/login_screen.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({super.key});

  final double textSize = 30.0; // Define your textSize here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: GradientColors.primaryGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox.shrink(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginAdmin()),
                );
              },
              style: ButtonStyles.gradientButtonStyle(context, textSize),
              child: Text(
                'Admin',
                style: TextStyles.gradientTextStyle(context, textSize),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle user button press

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ButtonStyles.gradientButtonStyle(context, textSize),
              child: Text(
                'User',
                style: TextStyles.gradientTextStyle(context, textSize),
              ),
            ),
            const Expanded(
              child: SizedBox.shrink(), // Expanded widget to fill the space
            ),
          ],
        ),
      ),
    );
  }
}
