import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';

class RadiusManager {
  final radius = BorderRadius.all(Radius.circular(16));
  final radius2 = BorderRadius.circular(16);
}

class BorderForTextField {
  final borders = BorderSide(width: 1, color: borderColor);
  final borders2 = BorderSide(width: 1, color: TransparentForCategory);
}

class OutlineInputBorders {
  final styleForBorder = OutlineInputBorder(
      borderSide: BorderForTextField().borders,
      borderRadius: RadiusManager().radius);
  final styleForSearchBorder = OutlineInputBorder(
      borderSide: BorderForTextField().borders2,
      borderRadius: RadiusManager().radius);
}
