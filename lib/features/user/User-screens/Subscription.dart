import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/home_screen.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/bold_text.dart';
import 'package:advance_parking_our_fyp/widgets/botum_navigationbar.dart';
import 'package:advance_parking_our_fyp/widgets/cercal_button.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:advance_parking_our_fyp/widgets/subscription_contaner.dart';
import 'package:flutter/material.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Car Parking"),
        drawer: CustomDrawer(),
        body: Container(
          height: MediaQuery.sizeOf(context).height * 1.0,
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircularButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomBottomNavigationBar()), // Replace HomeScreen with the actual home screen widget
                        );
                      },
                    ),
                    // Other widgets in the row if needed
                  ],
                ),
                SubscriptionContainer(
                  customText: 'Monthly Subscription ',
                  customTextSimple1: '  Validity : 30 days',
                  customTextSimple2: '  Validity : Only days',
                  customTextSimple3: '  06:00 am  to 06:00 pm',
                  customRs: "Rs. 1500",
                ),
                20.h,
                SubscriptionContainer(
                  customText: 'Monthly Subscription ',
                  customTextSimple1: '  Validity : 30 days',
                  customTextSimple2: '  Validity : Only night',
                  customTextSimple3: '  06:00 pm  to 06:00 am',
                  customRs: "Rs. 1000",
                ),
                20.h,
                SubscriptionContainer(
                  customText: 'Weakly Subscription ',
                  customTextSimple1: '  Validity : 7 days',
                  customTextSimple2: '  Validity : Only night',
                  customTextSimple3: '  06:00 pm  to 06:00 am',
                  customRs: "Rs. 300",
                ),
                20.h,
                SubscriptionContainer(
                  customText: 'Weakly Subscription ',
                  customTextSimple1: '  Validity : 7 days',
                  customTextSimple2: '  Validity : Only days',
                  customTextSimple3: '  06:00 am  to 06:00 pm',
                  customRs: "Rs. 350",
                ),
                20.h,
                SubscriptionContainer(
                  customText: '5 Days Subscription ',
                  customTextSimple1: '  Validity : 5 days',
                  customTextSimple2: '  Validity : Only days',
                  customTextSimple3: '  06:00 am  to 06:00 pm',
                  customRs: "Rs. 250",
                ),
                20.h,
                SubscriptionContainer(
                  customText: '3 Days Subscription ',
                  customTextSimple1: '  Validity : 3 days',
                  customTextSimple2: '  Validity : Only days',
                  customTextSimple3: '  06:00 am  to 06:00 pm',
                  customRs: "Rs. 200",
                ),
                20.h,
                SubscriptionContainer(
                  customText: 'Weakly Subscription ',
                  customTextSimple1: '  Validity : 7 days',
                  customTextSimple2: '  Validity : 24 hors',
                  customTextSimple3: '  06:00 am  to 06:00 pm',
                  customRs: "Rs. 700",
                ),
                20.h,
                SubscriptionContainer(
                  customText: 'Monthly Subscription ',
                  customTextSimple1: '  Validity : 30 days',
                  customTextSimple2: '  Validity : 24 hors',
                  customTextSimple3: '  06:00 am  to 06:00 pm',
                  customRs: "Rs. 3000",
                ),
                20.h,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
