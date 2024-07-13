import 'dart:io';

import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late ImagePicker _imagePicker;
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _pickImage(ImageSource source) async {
    XFile? image = await _imagePicker.pickImage(source: source);
    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  Future<void> _showImagePickerDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose Image Source"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                  child: ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Camera'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pickImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                  child: ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text('Gallery'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Car Parking"),
        drawer: CustomDrawer(),
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: _showImagePickerDialog,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: _imageFile != null
                                ?FileImage(_imageFile!) as ImageProvider<Object>
                                : AssetImage("images/profile.png"),
                          ),
                          const Positioned(
                            bottom: 5,
                            right: 5,
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Other profile information
                    buildInfoRow(Icons.person, 'Name : ', 'Asad Rafique'),
                    buildDivider(),
                    buildInfoRow(Icons.phone, 'Contact : ', '+923206326121'),
                    buildDivider(),
                    buildInfoRow(
                        Icons.email, 'Email  : ', '20101001-163@uskt.edu.pk'),
                    buildDivider(),
                    buildInfoRow(
                        Icons.date_range, 'In Date   :', ' 07 Jan 2023'),
                    buildInfoRow(
                        Icons.date_range, 'Out Date  :', ' 08 Feb 2023'),
                    buildDivider(),
                    const Text(
                      ' Vehicle Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    buildDivider(),
                    buildInfoRow(null, 'Model  :', '  ABC'),
                    buildInfoRow(null, 'Color  :', '  blak'),
                    buildInfoRow(null, 'Type   :', '  Sedan'),
                    buildInfoRow(null, 'Slots  :', '  123'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData? icon, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) Icon(icon, size: 20),
        const SizedBox(width: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey,
      margin: const EdgeInsets.symmetric(vertical: 10),
    );
  }
}
