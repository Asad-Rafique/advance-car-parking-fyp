// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/widgets/botum_navigationbar.dart';
import 'package:advance_parking_our_fyp/widgets/contaner_home.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Car Parking ",
        ),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Background Image
              Image.asset(
                'images/home.png', // Replace with your background image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 1000,
              ),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                      CustomContaner(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
