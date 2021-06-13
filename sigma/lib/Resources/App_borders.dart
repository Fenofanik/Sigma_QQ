import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';

class RadiusManager {
  final radius = BorderRadius.all(Radius.circular(16));
}

class BorderForTextField {
  final borders = BorderSide(width: 2, color: ColorsManager.borderColor);
}

class OutlineInputBorders {
  final styleForBorder = OutlineInputBorder(
      borderSide: BorderForTextField().borders,
      borderRadius: RadiusManager().radius);
}