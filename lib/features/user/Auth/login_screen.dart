// ignore_for_file: prefer_const_constructors, unused_import

import 'package:advance_parking_our_fyp/features/user/Auth/SignUp_screen.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/home_screen.dart';
import 'package:advance_parking_our_fyp/repository/auth_repository.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/util/utils.dart';
import 'package:advance_parking_our_fyp/widgets/bold_text.dart';
import 'package:advance_parking_our_fyp/widgets/custom_text.dart';
import 'package:advance_parking_our_fyp/widgets/custom_textbutton.dart';
import 'package:advance_parking_our_fyp/widgets/custom_textfield.dart';
import 'package:advance_parking_our_fyp/widgets/rounded_btn.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:advance_parking_our_fyp/widgets/cercal_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../widgets/botum_navigationbar.dart';
import '../../../widgets/progress_indicator.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) async {
    try {
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final response = await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Check if the user is not null
      if (response.user != null) {
        // ignore: use_build_context_synchronously
        Utils.showSnackBar(context, 'Login successful');
        // Navigate to the home screen or any other screen after login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CustomBottomNavigationBar(),
          ),
        );
      } else {
        // ignore: use_build_context_synchronously
        Utils.showSnackBar(context, 'Invalid Credentials');
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      Utils.showSnackBar(context, '$e');
    }
  }

  bool isLoading = false;
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: context.screenHeight,
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
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
                        // Handle back button press
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                20.h,
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: BoldText(text: "Login"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SimpleText(text: "Enter your Details"),
                ),
                CustomTextField(
                  hintText: "Email",
                  controller: emailController,
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
                  isPassword: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                20.h,
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: RoundedButton(
                          isLoading: isLoading,
                          text: "Login",
                          onPressed: () async {
                            if (key.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              await AuthRepository().logIn(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  context: context);
                              setState(() {
                                isLoading = false;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SimpleText(text: "Do not have an account?"),
                          CustomTextButton(
                            text: "Sign Up",
                            onPressed: () {
                              // Handle button press
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
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
    );
  }
}
