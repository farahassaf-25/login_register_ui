import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/screens/welcome_screen.dart';
import 'package:signin_signup/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Register',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Constant.mcgpalette0,
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
