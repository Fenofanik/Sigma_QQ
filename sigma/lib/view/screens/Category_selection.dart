import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
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
        child: GetX<CategoryController>(
          builder: (controller) {
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
                                  Icons.arrow_back, size: 16,
                                  color: whiteColors,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Text(
                              "Давайте знакомиться",
                              style: TextStyles().style_7,),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 16),
                        child: Text("Выберите категории, которые вам интересны",
                          style: TextStyles().style_6,),
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 50),
                            child:ElevatedButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                                  style: controller.categoryNames.first.pressed.value?
                                  ElevatedButtonStyleManager().elevatedButtonStyleCategory1Active :
                                  ElevatedButtonStyleManager().elevatedButtonStyleCategory1,
                                  child:
                                  Text(
                                      controller.categoryNames.first.cafesAndRestaurants,
                                      style: TextStyles().style_6),
                                ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 16, left: 10, top: 50),
                            child: ElevatedButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                              style: controller.categoryNames.first.pressed.value?
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory2Active:
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory2,
                              child: Text(
                                controller.categoryNames.first.trips, style: TextStyles().style_6,),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 16),
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            ElevatedButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                              style: controller.categoryNames.first.pressed.value?
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory3Active:
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory3,
                              child: Text(controller.categoryNames.first.car, style: TextStyles().style_6,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 71, left: 10),
                              child: ElevatedButton(onPressed: () {
                                controller.categoryNames.first.pressed.toggle();
                              },
                                style: controller.categoryNames.first.pressed.value?
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory4Active:
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory4,
                                child: Text(
                                  controller.categoryNames.first.beauty,
                                  style: TextStyles().style_6,),
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
                            ElevatedButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                              style: controller.categoryNames.first.pressed.value?
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory5Active:
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory5,
                              child: Text(
                                controller.categoryNames.first.marketplaces, style: TextStyles().style_6,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 19),
                              child: ElevatedButton(onPressed: () {
                                controller.categoryNames.first.pressed.toggle();
                              },
                                style: controller.categoryNames.first.pressed.value?
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory6Active:
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory6,
                                child: Text(
                                  controller.categoryNames.first.baby,
                                  style: TextStyles().style_6,),
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
                            ElevatedButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                              style: controller.categoryNames.first.pressed.value?
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory7Active:
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory7,
                              child: Text(
                                controller.categoryNames.first.clothes,
                                style: TextStyles().style_6,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 29),
                              child: ElevatedButton(onPressed: () {
                                controller.categoryNames.first.pressed.toggle();
                              },
                                style: controller.categoryNames.first.pressed.value?
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory8Active:
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory8,
                                child: Text(
                                  controller.categoryNames.first.electronics, style: TextStyles().style_6,),
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
                            ElevatedButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                              style: controller.categoryNames.first.pressed.value?
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory9Active:
                              ElevatedButtonStyleManager().elevatedButtonStyleCategory9,
                              child: Text(
                                controller.categoryNames.first.services, style: TextStyles().style_6,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 46),
                              child: ElevatedButton(onPressed: () {
                                controller.categoryNames.first.pressed.toggle();
                              },
                                style: controller.categoryNames.first.pressed.value?
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory10Active:
                                ElevatedButtonStyleManager().elevatedButtonStyleCategory10,
                                child: Text(
                                  controller.categoryNames.first.entertainment,
                                  style: TextStyles().style_6,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 26, right: 14, top: 30),
                        child: Wrap(
                          children: <Widget>[
                            Obx(()=>IconButton(onPressed: () {
                              controller.categoryNames.first.pressed.toggle();
                            },
                                icon: controller.categoryNames.first.pressed.value?
                                Icon(
                                    Icons.check_box_sharp, size: 20,
                                    color: CategoryButton1):
                                Icon(
                                    Icons.check_box_outline_blank, size: 20,
                                    color: CategoryButton1)

                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 12),
                              child: Text(
                                "Выбрать все", style: TextStyles().style_3,),
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
                            onPressed: () {},
                            style: controller.categoryNames.first.pressed.value?
                            ElevatedButtonStyleManager().elevatedButtonStyleStart:
                            ElevatedButtonStyleManager().elevatedButtonStyleStart2,
                            child: Text(
                              "ДЕЛЕЕ",
                              style: controller.categoryNames.first.pressed.value?TextStyles().style_5:TextStyles().style_8,
                            ),
                          ),
                        ),
                      )

                    ],);
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
