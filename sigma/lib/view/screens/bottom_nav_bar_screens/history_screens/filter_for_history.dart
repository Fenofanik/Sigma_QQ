import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/core/controllers/category_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class HistoryFilter extends BaseStatelessScreen {
  final categoryController = Get.put(CategoryController());

  @override
  Widget buildBody(BuildContext context) {
    return  GetX<CategoryController>(builder: (controller) {
          return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:40,left: 16,right: 16),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                   IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 16,
                          color: whiteColors,
                        )),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                        "Фильтр",
                        style: style_7,
                      ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: Text(
                "Категории",
                style: style_10,
              ),
            ),
            Expanded(flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                     ElevatedButton(
                        onPressed: () {
                          controller.pressedCafe.toggle();
                        },
                        style: controller.pressed.value ||
                                controller.pressedCafe.value
                            ? elevatedButtonStyleCategory1Active
                            : elevatedButtonStyleCategory1,
                        child: Text(
                            controller.categoryNames.first.cafesAndRestaurants,
                            style: controller.pressed.value ||
                                    controller.pressedCafe.value
                                ? style_12
                                : style_6),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.pressedMarket.toggle();
                        },
                        style: controller.pressed.value ||
                                controller.pressedMarket.value
                            ? elevatedButtonStyleCategory5Active
                            : elevatedButtonStyleCategory5,
                        child: Text(
                          controller.categoryNames.first.marketplaces,
                          style: controller.pressed.value ||
                                  controller.pressedMarket.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.pressedCar.toggle();
                      },
                      style: controller.pressed.value ||
                          controller.pressedCar.value
                          ? elevatedButtonStyleCategory3Active
                          : elevatedButtonStyleCategory3,
                      child: Text(
                        controller.categoryNames.first.car,
                        style: controller.pressed.value ||
                            controller.pressedCar.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.pressedBaby.toggle();
                        },
                        style: controller.pressed.value ||
                            controller.pressedBaby.value
                            ? elevatedButtonStyleCategory6Active
                            : elevatedButtonStyleCategory6,
                        child: Text(
                          controller.categoryNames.first.baby,
                          style: controller.pressed.value ||
                              controller.pressedBaby.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.pressedElectronics.toggle();
                      },
                      style: controller.pressed.value ||
                          controller.pressedElectronics.value
                          ? elevatedButtonStyleCategory8Active
                          : elevatedButtonStyleCategory8,
                      child: Text(
                        controller.categoryNames.first.electronics,
                        style: controller.pressed.value ||
                            controller.pressedElectronics.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.pressedClothes.toggle();
                      },
                      style: controller.pressed.value ||
                          controller.pressedClothes.value
                          ? elevatedButtonStyleCategory7Active
                          : elevatedButtonStyleCategory7,
                      child: Text(
                        controller.categoryNames.first.clothes,
                        style: controller.pressed.value ||
                            controller.pressedClothes.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.pressedServices.toggle();
                        },
                        style: controller.pressed.value ||
                            controller.pressedServices.value
                            ? elevatedButtonStyleCategory9Active
                            : elevatedButtonStyleCategory9,
                        child: Text(
                          controller.categoryNames.first.services,
                          style: controller.pressed.value ||
                              controller.pressedServices.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.pressedTrips.toggle();
                      },
                      style: controller.pressed.value ||
                          controller.pressedTrips.value
                          ? elevatedButtonStyleCategory2Active
                          : elevatedButtonStyleCategory2,
                      child: Text(
                        controller.categoryNames.first.trips,
                        style: controller.pressed.value ||
                            controller.pressedTrips.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.pressedBeauty.toggle();
                        },
                        style: controller.pressed.value ||
                            controller.pressedBeauty.value
                            ? elevatedButtonStyleCategory4Active
                            : elevatedButtonStyleCategory4,
                        child: Text(
                          controller.categoryNames.first.beauty,
                          style: controller.pressed.value ||
                              controller.pressedBeauty.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.pressedEntertainment.toggle();
                      },
                      style: controller.pressed.value ||
                          controller.pressedEntertainment.value
                          ? elevatedButtonStyleCategory10Active
                          : elevatedButtonStyleCategory10,
                      child: Text(
                        controller.categoryNames.first.entertainment,
                        style: controller.pressed.value ||
                            controller.pressedEntertainment.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 16),
                child: Text(
                  "Расстояние",
                  style: style_10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 10),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.radio_button_unchecked,
                        size: 20,
                        color: borderColor,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "ближайшие",
                      style: style_3,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        controller.pressed.toggle();
                      },
                      icon: controller.pressed.value
                          ? Icon(Icons.radio_button_checked,
                              size: 20, color: borderColor)
                          : Icon(Icons.radio_button_unchecked,
                              size: 20, color: borderColor)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "все",
                      style: style_3,
                    ),
                  )
                ],
              ),
            ),
            Expanded(flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                   top:30, left: 16, right: 16, bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: elevatedButtonStyleStart,
                    child: Text(
                      "ПРИМЕНИТЬ",
                      style: style_11,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      });
  }

}
