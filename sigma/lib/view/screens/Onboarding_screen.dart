import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/controlles/onboarding_controller.dart';
import 'package:sigma/core/ui/widgets/base_stateless_widget.dart';

class OnBoardingScreen extends BaseStatelessWidget {
  final _controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
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
                        borderRadius: RadiusManager().radius,
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
                  style: ElevatedButtonStyleManager().elevatedButtonStyleStart,
                  child: Text(
                    "ПРОПУСТИТЬ",
                    style: TextStyles().style_5,
                  ),
                ),
              ),
            ),
          ],
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
