// ignore_for_file: prefer_const_constructors

import 'package:advance_parking_our_fyp/features/admin/Subscription/Add_Subscription.dart';
import 'package:advance_parking_our_fyp/features/admin/Subscription/Subscription_Admin.dart';
import 'package:advance_parking_our_fyp/features/admin/Subscription/popup_maniu.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/cercal_button.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:flutter/material.dart';

class SubscriptionAdmin extends StatefulWidget {
  const SubscriptionAdmin({Key? key}) : super(key: key);

  

  @override
  State<SubscriptionAdmin> createState() => _SubscriptionAdminState();
}

class _SubscriptionAdminState extends State<SubscriptionAdmin> {
  bool isDetailsVisible = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Car Parking",
        ),
        drawer: CustomDrawer(),
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      CircularButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        
                      ),
                      Spacer(),
                    CustomPopupMenu(onItemSelected:   (p0) => AddScreen(),),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Subscription',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
                SUBSCRIPTIONadminContaner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
