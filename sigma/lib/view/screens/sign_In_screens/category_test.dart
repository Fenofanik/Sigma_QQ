import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/controllers/category_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class TestCategory  extends BaseStatelessScreen {
  final categoryController = Get.put(CategoryController());


  @override
  Widget buildBody(BuildContext context) {
    return  GetX<CategoryController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
            child: Text(
              "Выберите категории, которые вам интересны",
              style: style_6,
            ),
          ),
          Wrap(
            children: controller.categoryNames.map((e) =>
                ElevatedButton(
                  onPressed: () {
                    updateValue();
                  },
                  style: categoryController.pressed.value ||
                      categoryController.pressedCafe.value
                      ? elevatedButtonStyleCategory1Active
                      : elevatedButtonStyleCategory1,
                  

                  child : Text(controller.categoryNames.first.car,
                      style: controller.pressed.value ||
                          controller.pressedCafe.value
                          ? style_12
                          : style_6),
                ),
            ).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 16, top: 20),
            child: Wrap(
              children: <Widget>[
                Obx(() => IconButton(
                    onPressed: () {
                      controller.pressed.toggle();
                    },
                    icon: controller.pressed.value
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
                style: lolKekJOPA(),
                child: Text(
                  "ДЕЛЕЕ",
                  style: controller.pressed.value
                      ? style_5
                      : style_8,
                ),
              ),
            ),
          )
        ],
      );
    });
  }
  updateValue(){
   categoryController.pressedCafe.toggle();
   categoryController.pressedTrips.toggle();
   categoryController.pressedCar.toggle();
   categoryController.pressedBeauty.toggle();
   categoryController.pressedMarket.toggle();
   categoryController.pressedBaby.toggle();
   categoryController.pressedClothes.toggle();
   categoryController.pressedElectronics.toggle();
   categoryController.pressedServices.toggle();
   categoryController.pressedEntertainment.toggle();
  }
  lolKekJOPA(){
    var style =  categoryController.pressed.value ||
        categoryController.pressedCafe.value ||
        categoryController.pressedClothes.value ||
        categoryController.pressedElectronics.value ||
        categoryController.pressedEntertainment.value ||
        categoryController.pressedServices.value ||
        categoryController.pressedBaby.value ||
        categoryController.pressedBeauty.value ||
        categoryController.pressedCar.value ||
        categoryController.pressedTrips.value ||
        categoryController.pressedMarket.value?
          elevatedButtonStyleStart
        : elevatedButtonStyleStart2;
  }


}