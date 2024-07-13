import 'dart:io';

import 'package:advance_parking_our_fyp/features/user/User-screens/drawer.dart';
import 'package:advance_parking_our_fyp/util/colors.dart';
import 'package:advance_parking_our_fyp/widgets/custom_Appbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNewUser extends StatefulWidget {
  const AddNewUser({Key? key}) : super(key: key);

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  late ImagePicker _imagePicker;
  File? _imageFile;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  // Dropdown items with unique values
  final List<String> vehicleTypes = ['Sedan', 'SUV', 'Truck'];
  String? selectedVehicleType; // Selected value for the dropdown

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
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: SingleChildScrollView(
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
                                  ? FileImage(_imageFile!) as ImageProvider<Object>
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
                      YourProfileWidget(
                        nameController: nameController,
                        contactController: contactController,
                        modelController: modelController,
                        numberController: numberController,
                        typeController: typeController,
                        vehicleTypes: vehicleTypes,
                        selectedVehicleType: selectedVehicleType,
                        onVehicleTypeChanged: (value) {
                          setState(() {
                            selectedVehicleType = value;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          _validateForm();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7, // Set width to 70% of the screen width
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 69, 212, 34), // Set background color to purple
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validateForm() {
    bool isValid = true;

    // Validate name
    if (nameController.text.isEmpty) {
      isValid = false;
      _showValidationError('Name is required.');
    }

    // Validate contact
    if (contactController.text.isEmpty || !RegExp(r'^[0-9]{11}$').hasMatch(contactController.text)) {
      isValid = false;
      _showValidationError('Contact is required and must be 11 digits.');
    }

    // Validate other fields
    // Add more validations for other fields as needed

    if (isValid) {
      // If the form is valid, pass the data to another file or function
      _submitData();
    }
  }

  void _submitData() {
    // Handle submit button press
    // You can implement the logic for submitting the data to your database or another file here
    print("Submit Button Pressed");
    print("Name: ${nameController.text}");
    print("Contact: ${contactController.text}");
    print("Model: ${modelController.text}");
    print("Number: ${numberController.text}");
    print("Type: $selectedVehicleType");
  }

  void _showValidationError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class YourProfileWidget extends StatelessWidget {
  const YourProfileWidget({
    Key? key,
    required this.nameController,
    required this.contactController,
    required this.modelController,
    required this.numberController,
    required this.typeController,
    required this.vehicleTypes,
    required this.selectedVehicleType,
    required this.onVehicleTypeChanged,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController contactController;
  final TextEditingController modelController;
  final TextEditingController numberController;
  final TextEditingController typeController;
  final List<String> vehicleTypes;
  final String? selectedVehicleType;
  final Function(String?) onVehicleTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        // Other profile information
        buildInfoTextField(Icons.person, 'Name : ', nameController, null),
        buildDivider(),
        buildInfoTextField(Icons.phone, 'Contact : ', contactController, null),
        buildDivider(),
        const Text(
          ' Vehicle Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        buildDivider(),
        buildInfoTextField(null, 'Model  ', modelController, null),
        buildInfoTextField(null, 'Number  ', numberController, null),
        buildDropdownField('Type   ', vehicleTypes, selectedVehicleType, onVehicleTypeChanged),
      ],
    );
  }

  Widget buildInfoTextField(
    IconData? icon,
    String label,
    TextEditingController controller,
    String? errorMessage,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) Icon(icon),
              SizedBox(width: 10),
              Text(label),
            ],
          ),
          SizedBox(height: 5),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (label == 'Name : ' && value!.isEmpty) {
                return 'Name is required.';
              }
              if (label == 'Contact : ' &&
                  (value!.isEmpty || !RegExp(r'^[0-9]{11}$').hasMatch(value))) {
                return 'Contact is required and must be 11 digits.';
              }
              // Add more validations for other fields as needed
              return null;
            },
          ),
          if (errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildDropdownField(
    String label,
    List<String> items,
    String? selectedValue,
    Function(String?) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.arrow_drop_down),
              SizedBox(width: 10),
              Text(label),
            ],
          ),
          SizedBox(height: 5),
          DropdownButtonFormField<String>(
            value: selectedValue,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (label == 'Type   ' && value == null) {
                return 'Type is required.';
              }
              // Add more validations for other dropdowns as needed
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Container(
      height: 1,
      color: Colors.grey,
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}



