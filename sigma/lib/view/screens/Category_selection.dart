import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/controlles/category_controller.dart';
import 'package:sigma/core/ui/widgets/base_stateless_widget.dart';

class CategorySelection extends BaseStatelessWidget {
  final categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                      style: TextStyles().style_7,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 16),
                child: Text(
                  "Выберите категории, которые вам интересны",
                  style: TextStyles().style_6,
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedCafe.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedCafe.value
                          ? ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory1Active
                          : ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory1,
                      child: Text(
                          controller.categoryNames.first.cafesAndRestaurants,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedCafe.value
                              ? TextStyles().style_12
                              : TextStyles().style_6),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 10, top: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedTrips.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedTrips.value
                          ? ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory2Active
                          : ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory2,
                      child: Text(
                        controller.categoryNames.first.trips,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedTrips.value
                            ? TextStyles().style_12
                            : TextStyles().style_6,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedCar.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedCar.value
                          ? ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory3Active
                          : ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory3,
                      child: Text(
                        controller.categoryNames.first.car,
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first.pressedCar.value
                            ? TextStyles().style_12
                            : TextStyles().style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 71, left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedBeauty.toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedBeauty.value
                            ? ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory4Active
                            : ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory4,
                        child: Text(
                          controller.categoryNames.first.beauty,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedBeauty.value
                              ? TextStyles().style_12
                              : TextStyles().style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.categoryNames.first.pressedMarket.toggle();
                      },
                      style: controller.categoryNames.first.pressed.value ||
                              controller.categoryNames.first.pressedMarket.value
                          ? ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory5Active
                          : ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory5,
                      child: Text(
                        controller.categoryNames.first.marketplaces,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedMarket.value
                            ? TextStyles().style_12
                            : TextStyles().style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 19),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedBaby.toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first.pressedBaby.value
                            ? ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory6Active
                            : ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory6,
                        child: Text(
                          controller.categoryNames.first.baby,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller
                                      .categoryNames.first.pressedBaby.value
                              ? TextStyles().style_12
                              : TextStyles().style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
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
                          ? ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory7Active
                          : ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory7,
                      child: Text(
                        controller.categoryNames.first.clothes,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedClothes.value
                            ? TextStyles().style_12
                            : TextStyles().style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 29),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedElectronics
                              .toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first
                                    .pressedElectronics.value
                            ? ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory8Active
                            : ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory8,
                        child: Text(
                          controller.categoryNames.first.electronics,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller.categoryNames.first
                                      .pressedElectronics.value
                              ? TextStyles().style_12
                              : TextStyles().style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
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
                          ? ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory9Active
                          : ElevatedButtonStyleManager()
                              .elevatedButtonStyleCategory9,
                      child: Text(
                        controller.categoryNames.first.services,
                        style: controller.categoryNames.first.pressed.value ||
                                controller
                                    .categoryNames.first.pressedServices.value
                            ? TextStyles().style_12
                            : TextStyles().style_6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 46),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.categoryNames.first.pressedEntertainment
                              .toggle();
                        },
                        style: controller.categoryNames.first.pressed.value ||
                                controller.categoryNames.first
                                    .pressedEntertainment.value
                            ? ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory10Active
                            : ElevatedButtonStyleManager()
                                .elevatedButtonStyleCategory10,
                        child: Text(
                          controller.categoryNames.first.entertainment,
                          style: controller.categoryNames.first.pressed.value ||
                                  controller.categoryNames.first
                                      .pressedEntertainment.value
                              ? TextStyles().style_12
                              : TextStyles().style_6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 14, top: 30),
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
                        style: TextStyles().style_3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 100, left: 16, right: 16, bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, bottomNavBar);
                    },
                    style: controller.categoryNames.first.pressed.value || controller.categoryNames.first.pressedCafe.value ||
                        controller.categoryNames.first.pressedClothes.value || controller.categoryNames.first.pressedElectronics.value ||
                        controller.categoryNames.first.pressedEntertainment.value || controller.categoryNames.first.pressedServices.value ||
                        controller.categoryNames.first.pressedBaby.value || controller.categoryNames.first.pressedBeauty.value ||
                        controller.categoryNames.first.pressedCar.value || controller.categoryNames.first.pressedTrips.value||
                        controller.categoryNames.first.pressedMarket.value
                        ? ElevatedButtonStyleManager().elevatedButtonStyleStart
                        : ElevatedButtonStyleManager()
                            .elevatedButtonStyleStart2,
                    child: Text(
                      "ДЕЛЕЕ",
                      style: controller.categoryNames.first.pressed.value
                          ? TextStyles().style_5
                          : TextStyles().style_8,
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
  Widget getLayout(BuildContext context) {
    // TODO: implement getLayout
    throw UnimplementedError();
  }

}
