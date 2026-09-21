import 'dart:async';

import 'package:banking_app/home_screen/home_screen.dart';
import 'package:banking_app/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(child: Image.asset('assets/logo.png', width: 200,
        height: 200,
        fit: BoxFit.contain,)),
    );
  }
}