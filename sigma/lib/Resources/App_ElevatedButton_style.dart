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
    primary: whiteColors,
  );
  final elevatedButtonStyleStart2 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory1 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory2 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory3 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory4 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory5 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory6 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory7 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory8 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory9 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
  final elevatedButtonStyleCategory10 = ElevatedButton.styleFrom(
      shape: ShapeButtonManager().shape1,
      primary: TransparentForCategory,
      side: BorderSide(width: 1, color: forOnBoarding));
}
