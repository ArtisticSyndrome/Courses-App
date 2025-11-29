import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intern_project/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(
        context,
      ).copyWith(scaffoldBackgroundColor: Color.fromARGB(255, 88, 35, 187)),
      child: Scaffold(
        backgroundColor: Color(0xFF7C3AED),
        body: Center(child: Image.asset('assets/appicon.png')),
      ),
    );
  }
}
