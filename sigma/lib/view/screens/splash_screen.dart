import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/core/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:sigma/core/ui/widgets/base_stateless_widget.dart';

class Splash extends BaseStatelessWidget {
  final splashController = Get.put(SplashController());

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

  @override
  Widget getLayout(BuildContext context) {
    // TODO: implement getLayout
    throw UnimplementedError();
  }
}
