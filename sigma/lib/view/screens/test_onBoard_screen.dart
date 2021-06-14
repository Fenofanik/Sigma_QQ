import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/core/controlles/controllers.dart';

class TestOnBoardingScreen extends StatelessWidget {

  final Controller swapPages = Get.put(Controller());


  updUI() {
    swapPages.currentPage != swapPages.numPages - 1
        ? swapPages.pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease)
        : navigationPage();
  }

  void navigationPage() {
    Get.toNamed('/SIgnInScreen');
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < swapPages.numPages; i++) {
      list.add(
          i == swapPages.currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isActive
            ? forOnBoarding2
            : forOnBoarding,
        borderRadius: RadiusManager().radius,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: swapPages.pageController,
                onPageChanged: (int page){
                  //Obx(()swapPages.currentPage= page)//;
                   },
                children: <Widget>[Container(), Container(), Container()],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 20, top: 50),
              child: ElevatedButton(
                onPressed: () {
                  updUI();
                },
                style: ElevatedButtonStyleManager().elevatedButtonStyleStart,
                child: Text(
                  "ПРОПУСТИТЬ",
                  style: TextStyles().style_5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
