import 'package:flutter/material.dart';
import 'package:sigma/core/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class Splash extends BaseStatelessScreen {
  final splashController = Get.put(SplashController());

  @override
  Widget buildBody(BuildContext context) {
    return Center(
          child: Image.asset('assets/3x/splash1.png',
            width: 242.25, height: 66,),
        );
  }
}
