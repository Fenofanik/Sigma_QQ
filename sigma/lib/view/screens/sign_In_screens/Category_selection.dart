import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/controllers/Firebase_controller.dart';
import 'package:sigma/core/controllers/category_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class CategorySelection extends BaseStatelessScreen {
  final firebaseController = Get.put(FirebaseController());
  final categoryController = Get.put(CategoryController());


  @override
  Widget buildBody(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
        future: firebaseController.categoryRef.get(),
        builder: (context, productsSnapshot) {
          return StreamBuilder<QuerySnapshot>(
              stream: firebaseController.usersRef.snapshots(),
              builder: (context, userSnapshot) {
                if (userSnapshot.hasError) {
                  return Center(
                      child: Text("Error: ${userSnapshot.error}"),
                    );
                }
                if (userSnapshot.connectionState == ConnectionState.active &&
                    productsSnapshot.connectionState == ConnectionState.done) {
                  final userId = firebaseController.getUserId();
                  final user = userSnapshot.data!.docs.firstWhere((element) {
                    return element['id'] == userId;
                  });
                  final userCategory = List<String>.from(user['Category']);

                  final categoryData = productsSnapshot.data!.docs;

                  return Wrap(
                    children: categoryData.map((document) {
                      return appUI(context,document,userCategory);
                    }).toList(),
                  );
                }
                return Center(
                    child: CircularProgressIndicator(color: Colors.blue,),
                  );
              });
        },
      );

  }

  Widget appUI(BuildContext context, DocumentSnapshot document,List<String>category){
    final isCategory = category.contains(document.id);
    return GetX<CategoryController>(builder: (controller) {
          return ElevatedButton(
                    onPressed: ()async{
                      controller.firebaseController.usersRef.add(
                          {
                            await firebaseController
                                .updateUserCategory(document.id, category)
                          });
                    },
                    style :controller.pressed.value ||
                        controller.pressedCafe.value||isCategory
                        ? elevatedButtonStyleCategory1Active
                        : elevatedButtonStyleCategory1,
                    child: Text(document["CategoryName"],style: style_10,));

        } );
  }
  Widget categoryUI(BuildContext context, DocumentSnapshot document,List<String>category){
    final isMyCategory = category.contains(document.id.trim());
    return  GetX<CategoryController>(builder: (controller) {
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
                      Get.back();
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
                  onPressed: () async{

                    controller.firebaseController.usersRef.add(
                        {
                          await firebaseController
                              .updateUserCategory(document.id, category)
                        }
                    );
                    controller.pressedCafe.toggle();
                  },
                  style: controller.pressed.value ||
                      controller.pressedCafe.value||isMyCategory
                      ? elevatedButtonStyleCategory1Active
                      : elevatedButtonStyleCategory1,
                  child: Text(
                      document['CategoryName'],
                      style: controller.pressed.value ||
                          controller.pressedCafe.value||isMyCategory
                          ? style_12
                          : style_6),
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
                style: controller.pressed.value ||
                    controller.pressedCafe.value ||
                    controller.pressedClothes.value ||
                    controller.pressedElectronics.value ||
                    controller.pressedEntertainment.value ||
                    controller.pressedServices.value ||
                    controller.pressedBaby.value ||
                    controller.pressedBeauty.value ||
                    controller.pressedCar.value ||
                    controller.pressedTrips.value ||
                    controller.pressedMarket.value
                    ? elevatedButtonStyleStart
                    : elevatedButtonStyleStart2,
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



}

