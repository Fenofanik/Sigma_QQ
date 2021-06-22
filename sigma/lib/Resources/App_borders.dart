import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';

  final radius = BorderRadius.all(Radius.circular(16));
  final radius2 = BorderRadius.circular(16);

  final borders = BorderSide(width: 1, color: borderColor);
  final borders2 = BorderSide(width: 1, color: TransparentForCategory);

  final styleForBorder = OutlineInputBorder(
      borderSide: borders,
      borderRadius: radius);
  final styleForSearchBorder = OutlineInputBorder(
      borderSide: borders2,
      borderRadius: radius);

final BoxDecoration pinPutDecoration = BoxDecoration(
  color: ForSearchField,
  borderRadius: radius2,
  border: Border.all(
    color: TransparentForCategory,
  ),
);
final BoxDecoration selected = BoxDecoration(
  color: TransparentForCategory,
  borderRadius: radius2,
  border: Border.all(
    color: borderColor,
  ),
);
