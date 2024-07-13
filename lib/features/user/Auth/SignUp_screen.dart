// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:advance_parking_our_fyp/features/user/Auth/login_screen.dart';
import 'package:advance_parking_our_fyp/features/user/Auth/SignUp_screen2.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/util/utils.dart';
import 'package:advance_parking_our_fyp/widgets/bold_text.dart';
import 'package:advance_parking_our_fyp/widgets/cercal_button.dart';
import 'package:advance_parking_our_fyp/widgets/custom_text.dart';
import 'package:advance_parking_our_fyp/widgets/custom_textbutton.dart';
import 'package:advance_parking_our_fyp/widgets/custom_textfield.dart';
import 'package:advance_parking_our_fyp/widgets/rounded_btn.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:advance_parking_our_fyp/widgets/progress_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen();

  @override
  State<SignUpScreen> createState() => _signUpScreenState();
}

// ignore: camel_case_types
class _signUpScreenState extends State<SignUpScreen> {
  // ignore: non_constant_identifier_names
  final TextEditingController NameController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController EmailController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController PasswordController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController ConfirmPasswordController =
      TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: GradientColors.primaryGradient,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Form(
              key: key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircularButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CustomProgressIndicator(percentage: 0.5),
                    ],
                  ),
                  20.h,
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: BoldText(text: "Sign Up"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SimpleText(text: "Enter your Personal info"),
                  ),
                  CustomTextField(
                    hintText: "Name",
                    controller: NameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: "Email",
                    controller: EmailController,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@')) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: "Password",
                    controller: PasswordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: "Confirm Password",
                    controller: ConfirmPasswordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Confirm Password is required';
                      }
                      if (value != PasswordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  80.h,
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: RoundedButton(
                            text: "Next",
                            onPressed: () async {
                              if (key.currentState!.validate()) {
                                if (PasswordController.text !=
                                    ConfirmPasswordController.text) {
                                  Utils.showSnackBar(
                                      context, "Passwords do not match");
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen2(
                                        email: EmailController.text,
                                        name: NameController.text,
                                        password: PasswordController.text,
                                      ),
                                    ),
                                  );
                                }
                              } else {
                                Utils.showSnackBar(
                                    context, "Fill All the Fields");
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SimpleText(
                              text: "Already have an account",
                            ),
                            CustomTextButton(
                              text: "Login",
                              onPressed: () {
                                // Handle button press
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
