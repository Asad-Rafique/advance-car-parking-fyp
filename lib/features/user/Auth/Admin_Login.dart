// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

// import 'package:advance_parking_our_fyp/features/admin/Home_Admin.dart';
import 'package:advance_parking_our_fyp/features/admin/bottom_navigation_Admin.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/botum_navigationbar.dart';
import 'package:advance_parking_our_fyp/widgets/cercal_button.dart';
import 'package:advance_parking_our_fyp/widgets/custom_textfield.dart';
import 'package:advance_parking_our_fyp/widgets/progress_indicator.dart';
import 'package:advance_parking_our_fyp/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({super.key});

  @override
  State<LoginAdmin> createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  final TextEditingController AdminController = TextEditingController();
  final TextEditingController PasswordAdminController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Row(
                  children: [
                    CircularButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CustomProgressIndicator(percentage: 1.0),
                  ],
                ),
              ),
              Positioned(
                top: 190,
                child: Container(
                  height: 800,
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        CustomTextField(
                          hintText: "Name",
                          controller: AdminController, validator: (value) {  },
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          hintText: "Password",
                          controller: PasswordAdminController, validator: (value) {  },
                        ),
                        SizedBox(height: 120),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: RoundedButton(
                            text: "Next",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CustomBottomNavigationBarAdmin(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
