import 'dart:async';
import 'package:get/get.dart';
import 'package:sigma/config/constant_routes.dart';

class SplashController extends GetxController{
  final splashDelay = 3;

  @override
  void onInit() {
    super.onInit();
    _loadWidget();
  }
  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }
  void navigationPage() {
   Get.toNamed(onBoarding); //onBoarding  //bottomNavBar //otp
  }

  @override
  void onClose() {
    _loadWidget().dispose();
    super.onClose();
  }
}