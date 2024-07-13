// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContainerAdminHome extends StatelessWidget {
  final int number;
  final String carImage;

  const ContainerAdminHome({
    Key? key,
    required this.number,
    required this.carImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(255, 22, 219, 5), // Change the color as needed
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Change the color as needed
            ),
          ),
          SizedBox(height: 8),
          Image.asset(
            carImage,
            width: 100, // Adjust the width as needed
            height: 100, // Adjust the height as needed
         
          ),
        ],
      ),
    );
  }
}
