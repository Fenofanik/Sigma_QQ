import 'package:flutter/material.dart';
import 'view/splash_screen.dart';
import 'config/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(SigmaApp());
}

class SigmaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      getPages: AppRoutes.routes,
    );
  }
}

