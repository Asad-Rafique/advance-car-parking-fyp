

// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:advance_parking_our_fyp/features/admin/Admin_Daily_Users/AddUser.dart';
import 'package:advance_parking_our_fyp/features/admin/Home_Admin.dart';
import 'package:advance_parking_our_fyp/features/admin/Subscription/Subscription_Admin_contaner.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarAdmin extends StatefulWidget {
  const CustomBottomNavigationBarAdmin({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarAdminState createState() => _CustomBottomNavigationBarAdminState();
}

class _CustomBottomNavigationBarAdminState extends State<CustomBottomNavigationBarAdmin> {
  int _selectedIndex = 0;

  // List of screens to be displayed in the BottomNavigationBar
  final List<Widget> screens = [
    HomePage(),
    SubscriptionAdmin(),
     AddNewUser(),
    // UserHistory(),
  ];

  // List of corresponding icons and labels
  final List<Map<String, dynamic>> screenInfo = [
    {'icon': Icons.home, 'label': 'Slots'},
    {'icon': Icons.subscriptions_sharp, 'label': 'Subscription'},
    {'icon': Icons.add, 'label': 'Add'},
    // {'icon': Icons.history, 'label': 'History'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  selectedItemColor: const  Color.fromRGBO(51, 182, 135, 1),  // Set the color of the selected icon
  unselectedItemColor: const Color.fromARGB(255, 0, 0, 0), // Set the color of unselected icons
  onTap: _onItemTapped,
  items: List.generate(
    screens.length,
    (index) => BottomNavigationBarItem(
      icon: Icon(screenInfo[index]['icon']),
      label: screenInfo[index]['label'],
    ),
  ),
),
    );
  }

  void _onItemTapped(int index) {
  // Ensure the index is within the valid range
  if (index >= 0 && index < screens.length) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
}
