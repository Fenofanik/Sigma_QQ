import 'package:get/get.dart';
import 'package:sigma/core/models/category.dart';

class CategoryController extends GetxController {
  List<Category> categoryNames = [
    Category(
      cafesAndRestaurants: 'Кафе и Рестораны',
      trips: "Путешествия",
      car: "Авто",
      beauty: "Красота и Здоровье",
      marketplaces: "Маркетплейсы",
      baby: "Детские товары",
      clothes: "Одежда и Украшения",
      electronics: "Техника",
      services: "Услуги",
      entertainment: "Досуг и Развлечения"
    )
  ];
}
