// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar({Key? key, 
  required this.title,
   this.height = kToolbarHeight
   })
      
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      elevation: 0, // No shadow
      backgroundColor: Color.fromARGB(255, 21, 66, 22), // Customize the background color
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
