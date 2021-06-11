import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';

class ShapeButtonManager{
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
}
class RadiusManager {
  final radius = BorderRadius.all(Radius.circular(16));
}
class BorderForTextField{
  final borders = BorderSide(
  width: 2, color: ColorsManager.borderColor);
}