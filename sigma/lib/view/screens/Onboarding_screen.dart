import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/core/controllers/onboarding_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class OnBoardingScreen extends BaseStatelessScreen {
  final _controller = OnBoardingController();
  @override
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      elevation:0,);
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onBoardingPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(_controller.onBoardingPages[index].title),
                      Text(_controller.onBoardingPages[index].description)
                    ],
                  );
                },
                physics: ClampingScrollPhysics(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _controller.onBoardingPages.length,
                (index) => Obx(() {
                        return AnimatedContainer(
                  duration: Duration(microseconds: 150),
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  height: 8.0,
                  width: 8.0,
                  decoration: BoxDecoration(
                        color: _controller.selectedPageIndex.value == index
                            ? forOnBoarding
                            : forOnBoarding2,
                        borderRadius: radius,
                  ),
                );
                      }
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 20, top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    _controller.forButtonNext();
                  },
                  style: elevatedButtonStyleStart,
                  child: Text(
                    "ПРОПУСТИТЬ",
                    style: style_5,
                  ),
                ),
              ),
            ),
          ],
        );
  }

}
