import 'package:advance_parking_our_fyp/features/user/User-screens/Subscription.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/cercal_button.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SubscriptionPage()), // Replace HomeScreen with the actual home screen widget
                    );
                  },
                ),
                // Other widgets in the row if needed
              ],
            ),
            Column(
             
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(
                        6, 231, 13, 1), // Set your desired button color
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                        50), // Set the button size
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call, // Use the call icon
                        color: Colors.black, // Set the icon color
                      ),
                      SizedBox(
                          width: 8), // Add some spacing between icon and text
                      Text(
                        'Call',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                20.h,
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(
                        6, 231, 13, 1), // Set your desired button color
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                        50), // Set the button size
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email, // Use the call icon
                        color: Colors.black, // Set the icon color
                      ),
                      SizedBox(
                          width: 8), // Add some spacing between icon and text
                      Text(
                        'Call',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                20.h,
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(
                        6, 231, 13, 1), // Set your desired button color
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                        50), // Set the button size
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp, // Use the WhatsApp icon
                        color: Colors.black, // Set the icon color
                      ),
                      SizedBox(
                          width: 8), // Add some spacing between icon and text
                      Text(
                        'WhatsApp',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            )
         
          ],
        ),
      ),
    ));
  }
}
