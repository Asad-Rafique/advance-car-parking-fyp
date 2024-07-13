// ignore_for_file: prefer_const_constructors

import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/Contaner_Admin_Home.dart';
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
            appBar: const CustomAppBar(title: "Car Parking"),
            drawer: CustomDrawer(),
            body: Container(
              height: MediaQuery.of(context).size.height * 1.0,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                gradient: GradientColors.primaryGradient,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ContainerAdminHome(
                            number: 1,
                            carImage: 'images/car3.png',
                          ),
                          10.h,
                          ContainerAdminHome(
                            number: 3,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 5,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 7,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 9,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 11,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 13,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 15,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 17,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 19,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 21,
                            carImage: 'images/car3.png',
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ContainerAdminHome(
                            number: 2,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 4,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 6,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 8,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 10,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 12,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 14,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 16,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 18,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 20,
                            carImage: 'images/car3.png',
                          ),10.h,
                          ContainerAdminHome(
                            number: 22,
                            carImage: 'images/car3.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
