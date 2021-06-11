import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sigma/Resources/App_Colors.dart';

class TextStyles{
  TextStyle style_1 = GoogleFonts.openSans(
    color:ColorsManager.whiteColors,
    fontWeight:FontWeight.bold,
      fontSize: 36,
      decoration: TextDecoration.none
  );
  TextStyle style_2 = GoogleFonts.openSans(
      color:ColorsManager.whiteColors,
      fontWeight:FontWeight.normal,
      fontSize: 14,
      decoration: TextDecoration.none
  );
  TextStyle style_3 = GoogleFonts.openSans(
      color:ColorsManager.textForUser,
      fontWeight:FontWeight.normal,
      fontSize: 14,
      decoration: TextDecoration.none
  );
  TextStyle style_4 = GoogleFonts.openSans(
      color:ColorsManager.textForUser,
      fontWeight:FontWeight.w600,
      fontSize: 14,
      decoration: TextDecoration.underline,
      decorationColor: ColorsManager.textForUser
  );
  TextStyle style_5 = GoogleFonts.openSans(
      color:ColorsManager.blackColors,
      fontWeight:FontWeight.bold,
      fontSize: 16,
      decoration: TextDecoration.none
  );
}