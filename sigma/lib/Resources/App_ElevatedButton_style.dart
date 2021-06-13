import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';

class ShapeButtonManager {
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
}
class ElevatedButtonStyleManager{
  final elevatedButtonStyleStart = ElevatedButton.styleFrom(
    shape: ShapeButtonManager().shape,
    fixedSize: const Size(328, 44),
    primary: ColorsManager.whiteColors,
  );
}