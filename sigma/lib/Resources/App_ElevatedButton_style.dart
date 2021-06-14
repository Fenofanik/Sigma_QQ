import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';

class ShapeButtonManager {
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
  final shape1 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
}

class ElevatedButtonStyleManager {
  final elevatedButtonStyleStart = ElevatedButton.styleFrom(
    shape: ShapeButtonManager().shape,
    fixedSize: const Size(328, 44),
    primary: whiteColors,
  );
  final elevatedButtonStyleStart2 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape,
      fixedSize: const Size(328, 44),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory1 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(180, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory2 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(140, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory3 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(71, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory4 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(194, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory5 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(154, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory6 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(163, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory7 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(208, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory8 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(99, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory9 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(87, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory10 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      fixedSize: const Size(203, 40),
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
}
