import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/view/screens/bottom_nav_bar_screens/history_screens/My_History_screen.dart';

class BottomBarController extends GetxController {
  final _selectedIndex = 0.obs;

  final List<Widget> bodyContent = [
    Container(decoration: BoxDecoration(gradient: gradientForStart)),
    MyHistory(),
    Container(decoration: BoxDecoration(gradient: gradientForStart)),
    Container(decoration: BoxDecoration(gradient: gradientForStart)),
  ];

  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;
}