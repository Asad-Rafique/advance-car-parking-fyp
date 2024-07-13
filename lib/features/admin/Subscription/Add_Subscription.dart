import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  bool isPasswordVisible = false; // Track password visibility
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController vehicleTypeController = TextEditingController();
  TextEditingController vehicleColorController = TextEditingController();
  TextEditingController vehicleModelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Car Parking",
        ),
        drawer: CustomDrawer(),
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            gradient: GradientColors.primaryGradient,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circular Avatar Image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/avatar_image.png'),
                  ),
                  SizedBox(height: 20),
                  // Name, Contact, Email
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: contactController,
                      decoration: InputDecoration(
                        labelText: 'Contact',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Password Visibility Toggle
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Password:'),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: passwordController,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  // Vehicle Details
                  SizedBox(height: 20),
                  Text(
                    'Vehicle Details:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: vehicleTypeController,
                      decoration: InputDecoration(
                        labelText: 'Vehicle Type',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: vehicleColorController,
                      decoration: InputDecoration(
                        labelText: 'Vehicle Color',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: vehicleModelController,
                      decoration: InputDecoration(
                        labelText: 'Vehicle Model',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Add Button
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    
                    child: ElevatedButton(
                      
                      onPressed: () {
                        // Access user input using the controllers:
                        String name = nameController.text;
                        String contact = contactController.text;
                        String email = emailController.text;
                        String password = passwordController.text;
                        String vehicleType = vehicleTypeController.text;
                        String vehicleColor = vehicleColorController.text;
                        String vehicleModel = vehicleModelController.text;

                        // Implement your logic with the user input
                        // For example, print the input data
                        print('Name: $name');
                        print('Contact: $contact');
                        print('Email: $email');
                        print('Password: $password');
                        print('Vehicle Type: $vehicleType');
                        print('Vehicle Color: $vehicleColor');
                        print('Vehicle Model: $vehicleModel');
                      },
                      
                      child: Text('Add'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
