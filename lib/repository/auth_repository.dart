import 'package:advance_parking_our_fyp/util/utils.dart';
import 'package:advance_parking_our_fyp/widgets/botum_navigationbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUpAndSaveDetails({
    required String name,
    required String email,
    required String password,
    required String type,
    required String contact,
    required String model,
    required String number,
    required BuildContext context,
  }) async {
    try {
      // Sign up the user
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Save user details to Cloud Firestore
      String userId = userCredential.user!.uid;
      await _firestore.collection('users').doc(userId).set({
        'name': name,
        'email': email,
        'type': type,
        'contact': contact,
        'model': model,
        'number': number,
      });

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const CustomBottomNavigationBar()),
          (route) => false);
    } catch (e) {
      Utils.showSnackBar(context, e.toString());
    }
  }

  Future<void> logIn(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const CustomBottomNavigationBar()),
          (route) => false);
    } catch (e) {
      print("Login failed: $e");
      rethrow; // Re-throw the exception for handling in UI if needed
    }
  }
}
