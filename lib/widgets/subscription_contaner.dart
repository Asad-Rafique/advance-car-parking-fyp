import 'package:advance_parking_our_fyp/features/user/User-screens/Contect_screen.dart';
import 'package:advance_parking_our_fyp/widgets/space.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatefulWidget {
  final String customText;
  final String customTextSimple1;
   final String customTextSimple2;
    final String customTextSimple3;
     final String customRs;

 const SubscriptionContainer({
  Key? key,
  required this.customTextSimple1,
  required this.customTextSimple2,
  required this.customTextSimple3,
  required this.customRs,
  required this.customText,
}) : super(key: key);

  @override
  State<SubscriptionContainer> createState() => _SubscriptionContainerState();
}

class _SubscriptionContainerState extends State<SubscriptionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(),
        // Add more custom decoration if needed
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.customText,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  // Add more custom styles if needed
                ),
              ),
             
            ],
          ),
        30.h, // Use SizedBox for spacing

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.customTextSimple1,),
              Text(widget.customTextSimple2,),
              Text(widget.customTextSimple3,),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    widget.customRs,
                  style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 30), // Use SizedBox for spacing
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Custom button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Contact() ));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(6, 231, 13, 1),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                ),
                child: Text(
                  'Subscribe Now',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
