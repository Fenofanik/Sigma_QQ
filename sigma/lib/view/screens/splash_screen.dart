import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 4;

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Get.toNamed('/CategorySelection');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Center(
          child: Image.asset('assets/3x/splash1.png',
          width: 242.25, height: 66,),
        ),
      ),
    );
  }
}