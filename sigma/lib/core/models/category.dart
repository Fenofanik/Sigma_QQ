import 'package:get/state_manager.dart';

class Category {
  final String cafesAndRestaurants;
  final String trips;
  final String car;
  final String beauty;
  final String marketplaces;
  final String baby;
  final String clothes;
  final String electronics;
  final String services;
  final String entertainment;

  Category(
      {required this.cafesAndRestaurants,
      required this.baby,
      required this.car,
      required this.beauty,
      required this.clothes,
      required this.electronics,
      required this.entertainment,
      required this.marketplaces,
      required this.services,
      required this.trips});

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
