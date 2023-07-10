import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontName {
  static const String poppins = 'Poppins';
}

class FontSize {
  static const double s8 = 8;
  static const double s11 = 11;
  static const double s12 = 12;
  static const double s16 = 16;
  static const double s24 = 24;
  static const double s26 = 26;
  static const double s30 = 30;
  static const double s32 = 32;
}

class FontWeightManager {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
}

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,
    [String fontFamily = FontName.poppins]) {
  switch (fontFamily) {
    case FontName.poppins:
      return GoogleFonts.poppins(
          fontSize: fontSize, color: color, fontWeight: fontWeight);
    default:
      return GoogleFonts.poppins(
          fontSize: fontSize, color: color, fontWeight: fontWeight);
  }
}

// regular style
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// medium style
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
