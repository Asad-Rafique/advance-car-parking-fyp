import 'package:advance_parking_our_fyp/features/SplashScreen/splashscreen.dart';
import 'package:advance_parking_our_fyp/features/admin/Subscription/Add_Subscription.dart';
import 'package:advance_parking_our_fyp/features/admin/Subscription/popup_maniu.dart';
import 'package:advance_parking_our_fyp/features/admin/bottom_navigation_Admin.dart';
import 'package:advance_parking_our_fyp/features/user/Auth/SignUp_screen.dart';
import 'package:advance_parking_our_fyp/features/user/Auth/login_screen.dart';
import 'package:advance_parking_our_fyp/features/user/User-screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'widgets/botum_navigationbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
