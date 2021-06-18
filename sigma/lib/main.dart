import 'package:flutter/material.dart';
import 'package:sigma/view/screens/splash_screen.dart';
import 'config/constant_routes.dart';
import 'package:get/get.dart';
import 'package:sigma/config/router.dart';

void main() {
  runApp(SigmaApp());
}

class SigmaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Splash(),
      onGenerateRoute: Routers.generateRoute,
      initialRoute: splash,
    );
  }
}

