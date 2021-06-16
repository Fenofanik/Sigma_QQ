import 'package:flutter/cupertino.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;
  var pageController = PageController();

  forButtonNext() {
    if (isLastPage){
      isLastPage? Get.toNamed(signIn):Text('Whoops');
    }
    else
    pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  List<OnBoardingInfo> onBoardingPages = [
    OnBoardingInfo(description: '', title: ''),
    OnBoardingInfo(description: '', title: ''),
    OnBoardingInfo(description: '', title: '')
  ];
}
