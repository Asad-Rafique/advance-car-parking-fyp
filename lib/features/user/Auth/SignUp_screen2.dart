import 'package:advance_parking_our_fyp/features/user/Auth/login_screen.dart';
import 'package:advance_parking_our_fyp/repository/auth_repository.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../../../util/colors.dart';
import '../../../util/utils.dart';
import '../../../widgets/bold_text.dart';
import '../../../widgets/cercal_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_textbutton.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/progress_indicator.dart';
import '../../../widgets/rounded_btn.dart';

class SignUpScreen2 extends StatefulWidget {
  SignUpScreen2(
      {Key? key,
      required this.email,
      required this.name,
      required this.password})
      : super(key: key);

  String name, email, password;

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  final TextEditingController typeController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  bool isLoading = false;

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
                      CustomProgressIndicator(percentage: 1),
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
                    hintText: "Type Vehicle",
                    controller: typeController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Type is required';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: "Contact",
                    controller: contactController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Contact is required';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: "Model",
                    controller: modelController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Model is required';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: "Number Vehicle",
                    controller: numberController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Number is required';
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
                            isLoading: isLoading,
                            text: "Submit",
                            onPressed: () async {
                              if (key.currentState!.validate()) {
                                setState(() {
                                  isLoading = true;
                                });
                                await AuthRepository().signUpAndSaveDetails(
                                  name: widget.name,
                                  context: context,
                                  email: widget.email,
                                  password: widget.password,
                                  type: typeController.text,
                                  contact: contactController.text,
                                  model: modelController.text,
                                  number: numberController.text,
                                );

                                setState(() {
                                  isLoading = false;
                                });
                              } else {
                                Utils.showSnackBar(
                                    context, "Fill All the Fields");
                              }
                            },
                          ),
                        ),
                        10.h,
                        Row(
                          children: [
                            SimpleText(
                              text: "Already have an account",
                            ),
                            CustomTextButton(
                              text: "Login",
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                            ),
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
