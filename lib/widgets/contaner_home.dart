import 'package:flutter/material.dart';

class CustomContaner extends StatelessWidget {
  const CustomContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 100,
  width: 100,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 120, 223, 120),
    border: Border.all(width: 5),
  ),
  child: Image.asset(
    "images/car3.png",
    fit: BoxFit.cover,
  ),
);


  }
}