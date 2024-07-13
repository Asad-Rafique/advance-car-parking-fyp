// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';

class SUBSCRIPTIONadminContaner extends StatefulWidget {
  const SUBSCRIPTIONadminContaner({super.key});

  @override
  State<SUBSCRIPTIONadminContaner> createState() => _SUBSCRIPTIONadminContanerState();
}

class _SUBSCRIPTIONadminContanerState extends State<SUBSCRIPTIONadminContaner> {
  bool isDetailsVisible = false; // Change this line

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.0),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          height: isDetailsVisible
              ? MediaQuery.of(context).size.height * 0.4
              : MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              // Left side - Profile picture
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              SizedBox(
                width: 8.0,
              ),
              // Right side - Car details with up-down arrow
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Up-down arrow
                        Icon(
                          isDetailsVisible
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        // Car Details section
                        Text(
                          'Car Details',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Car Name: ABC123',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Car Number: XYZ456',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
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
      ],
    );
  }
}
