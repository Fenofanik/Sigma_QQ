import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void navigationPage() {
    Get.toNamed('/SIgnInScreen');
  }

  updUI() {
    _currentPage != _numPages - 1
        ? _pageController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.ease)
        : navigationPage();
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
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
            ? ColorsManager.forOnBoarding2
            : ColorsManager.forOnBoarding,
        borderRadius: RadiusManager().radius,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: ColorsManager.gradientForStart),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
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
