import 'package:advance_parking_our_fyp/features/user/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:share/share.dart';

import 'package:share_whatsapp/share_whatsapp.dart';

class CustomDrawer extends StatelessWidget {
  final customColor = const Color(0xFF33B687);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(
          // Set the color for the drawer icons
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: customColor,
              ),
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'images/logo.png',
                    height: 80,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.feedback,
                color: Colors.black,
              ),
              title: const Text(
                'Send feedback',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                launch('mailto:20101001-163@uskt.edu.pk?subject=Feedback');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.apps,
                color: Colors.black,
              ),
              title: const Text(
                'More App',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                launch(
                    'https://play.google.com/store/search?q=devglim&c=apps&hl=en&gl=US');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.share, // Icon for share
                color: Colors.black, // Set the custom color for the icon
              ),
              title: const Text(
                'Share',
                style: TextStyle(
                  color: Colors.black, // Set the custom color for the text
                ),
              ),
              onTap: () {
                 //ShareWhatsapp.ShareWhatsapp('Check out this amazing content!');
              },
            ),


            ListTile(
              leading: const Icon(
                Icons.star, // Icon for rating or stars
                color: Colors.black, // Set the custom color for the icon
              ),
              title: const Text(
                'Rate Us',
                style: TextStyle(
                  color: Colors.black, // Set the custom color for the text
                ),
              ),
              onTap: () {
                // Handle item tap
                // You may want to navigate to a rating or feedback screen
              },
            ),


            ListTile(
              leading: const Icon(
                Icons.privacy_tip, // Replace with the appropriate icon for privacy policy
                color: Colors.black, // Set the custom color for the icon
              ),
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Colors.black, // Set the custom color for the text
                ),
              ),
              onTap: () {
                // Handle item tap
                // You may want to navigate to a screen displaying the privacy policy
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.location_on, // Replace with the appropriate icon for location
                color: Colors.black, // Set the custom color for the icon
              ),
              title: const Text(
                'Location',
                style: TextStyle(
                  color: Colors.black, // Set the custom color for the text
                ),
              ),
              onTap: () {
                // Handle item tap
                // You may want to navigate to a screen for location settings or information
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.login, // Replace with the appropriate icon for location
                color: Colors.black, // Set the custom color for the icon
              ),
              title: const Text(
                'Log out',
                style: TextStyle(
                  color: Colors.red, // Set the custom color for the text
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
