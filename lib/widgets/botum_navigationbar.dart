import 'package:advance_parking_our_fyp/features/user/User-screens/Subscription.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/User_History.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/User_Profile.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/home_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  // List of screens to be displayed in the BottomNavigationBar
  final List<Widget> screens = [
    HomePage(),
    SubscriptionPage(),
    UserProfile(),
    UserHistory(),
  ];

  // List of corresponding icons and labels
  final List<Map<String, dynamic>> screenInfo = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.subscriptions_sharp, 'label': 'Subscription'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.history, 'label': 'History'},
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
