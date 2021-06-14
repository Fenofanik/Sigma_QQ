import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final int numPages = 3.obs as int;
  int currentPage = 0.obs as int;
  PageController pageController = PageController();
  final Controller swapPages = Get.put(Controller());
}
