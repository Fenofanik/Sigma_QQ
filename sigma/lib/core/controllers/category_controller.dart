import 'package:get/get.dart';
import 'package:sigma/core/models/category.dart';

import 'Firebase_controller.dart';

class CategoryController extends GetxController {
  final firebaseController = Get.put(FirebaseController());


  var categoryNames = <Category>[
    Category(
        cafesAndRestaurants: "Кафе и Рестораны",
        baby: "Детские товары",
        car: "Авто",
        beauty: "Красота и Здоровье",
        clothes: "Одежда и Украшения",
        electronics: "Техника",
        entertainment: "Досуг и Развлечения",
        marketplaces: "Маркетплейсы",
        services: "Услуги",
        trips: "Путешествия"
    )].obs;

  final pressed = false.obs;
  final pressedCafe = false.obs;
  final pressedCar = false.obs;
  final pressedBaby = false.obs;
  final pressedTrips = false.obs;
  final pressedEntertainment = false.obs;
  final pressedServices = false.obs;
  final pressedElectronics = false.obs;
  final pressedMarket = false.obs;
  final pressedBeauty = false.obs;
  final pressedClothes = false.obs;


}
