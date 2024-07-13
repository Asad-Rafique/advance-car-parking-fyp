import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:flutter/material.dart';

class UserHistory extends StatefulWidget {
  const UserHistory({super.key});

  @override
  State<UserHistory> createState() => _UserHistoryState();
}

class _UserHistoryState extends State<UserHistory> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Car Parking"),
        drawer: CustomDrawer(),

        body:  Container(
          height: MediaQuery.sizeOf(context).height*1.0,
          width: MediaQuery.sizeOf(context).width*1.0,
          decoration: BoxDecoration(
             gradient: GradientColors.primaryGradient,
          ),
          child: Column(
            children: [
              // Your widgets here
            ],
          ),
        ),
      ),
    );
  }
}