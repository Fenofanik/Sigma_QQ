import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/controllers/category_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class CategorySelection extends BaseStatelessScreen {
  final categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: gradientForStart),
        child: GetX<CategoryController>(builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 16,
                          color: whiteColors,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Text(
                      "Давайте знакомиться",
                      style: style_7,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                child: Text(
                  "Выберите категории, которые вам интересны",
                  style: style_6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedCafe.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedCafe.value
                          ? elevatedButtonStyleCategory1Active
                          : elevatedButtonStyleCategory1,
                      child: Text(
                          controller.categoryNames.first.cafesAndRestaurants,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedCafe.value
                              ? style_12
                              : style_6),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedTrips.toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedTrips.value
                            ? elevatedButtonStyleCategory2Active
                            : elevatedButtonStyleCategory2,
                        child: Text(
                          controller.categoryNames.first.trips,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedTrips.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 16, right: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedCar.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedCar.value
                          ? elevatedButtonStyleCategory3Active
                          : elevatedButtonStyleCategory3,
                      child: Text(
                        controller.categoryNames.first.car,
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first.pressedCar.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedBeauty.toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedBeauty.value
                            ? elevatedButtonStyleCategory4Active
                            : elevatedButtonStyleCategory4,
                        child: Text(
                          controller.categoryNames.first.beauty,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedBeauty.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 16, right: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedMarket.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedMarket.value
                          ? elevatedButtonStyleCategory5Active
                          : elevatedButtonStyleCategory5,
                      child: Text(
                        controller.categoryNames.first.marketplaces,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedMarket.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedBaby.toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first.pressedBaby.value
                            ? elevatedButtonStyleCategory6Active
                            : elevatedButtonStyleCategory6,
                        child: Text(
                          controller.categoryNames.first.baby,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedBaby.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 16, right: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedClothes.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller
                                  .categoryNames.first.pressedClothes.value
                          ? elevatedButtonStyleCategory7Active
                          : elevatedButtonStyleCategory7,
                      child: Text(
                        controller.categoryNames.first.clothes,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedClothes.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedElectronics
                              .toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first
                                    .pressedElectronics.value
                            ? elevatedButtonStyleCategory8Active
                            : elevatedButtonStyleCategory8,
                        child: Text(
                          controller.categoryNames.first.electronics,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller.categoryNames.first
                                      .pressedElectronics.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 16, right: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedServices.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller
                                  .categoryNames.first.pressedServices.value
                          ? elevatedButtonStyleCategory9Active
                          : elevatedButtonStyleCategory9,
                      child: Text(
                        controller.categoryNames.first.services,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedServices.value
                            ? style_12
                            : style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedEntertainment
                              .toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first
                                    .pressedEntertainment.value
                            ? elevatedButtonStyleCategory10Active
                            : elevatedButtonStyleCategory10,
                        child: Text(
                          controller.categoryNames.first.entertainment,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller.categoryNames.first
                                      .pressedEntertainment.value
                              ? style_12
                              : style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 16, top: 20),
                child: Wrap(
                  children: <Widget>[
                    Obx(() => IconButton(
                        onPressed: () {
                          controller.categoryNames.first.pressed.toggle();
                        },
                        icon: controller.categoryNames.first.pressed.value
                            ? Icon(Icons.check_box_sharp,
                                size: 20, color: CategoryButton1)
                            : Icon(Icons.check_box_outline_blank,
                                size: 20, color: CategoryButton1))),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 12),
                      child: Text(
                        "Выбрать все",
                        style: style_3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 70, left: 16, right: 16, bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, bottomNavBar);
                    },
                    style: controller.categoryNames.first.pressed.value ||
                            controller.categoryNames.first.pressedCafe.value ||
                            controller
                                .categoryNames.first.pressedClothes.value ||
                            controller
                                .categoryNames.first.pressedElectronics.value ||
                            controller.categoryNames.first.pressedEntertainment
                                .value ||
                            controller
                                .categoryNames.first.pressedServices.value ||
                            controller.categoryNames.first.pressedBaby.value ||
                            controller
                                .categoryNames.first.pressedBeauty.value ||
                            controller.categoryNames.first.pressedCar.value ||
                            controller.categoryNames.first.pressedTrips.value ||
                            controller.categoryNames.first.pressedMarket.value
                        ? elevatedButtonStyleStart
                        : elevatedButtonStyleStart2,
                    child: Text(
                      "ДЕЛЕЕ",
                      style: controller.categoryNames.first.pressed.value
                          ? style_5
                          : style_8,
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    throw UnimplementedError();
  }
}
