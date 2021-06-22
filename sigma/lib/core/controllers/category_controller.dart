import 'package:get/get.dart';
import 'package:sigma/core/models/category.dart';

class CategoryController extends GetxController {

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


}
