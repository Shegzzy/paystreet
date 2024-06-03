import 'package:flutter/material.dart';

import 'dimensions.dart';

class Fonts {
  // Inter font TextStyle
  static TextStyle fontInter({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
    double? height,
    double? letterSpacing,
    TextOverflow? textOverflow,
  }) =>
      TextStyle(
        fontFamily: 'Inter',
        fontSize: fontSize ?? Dimensions.font18,
        fontWeight: fontWeight ?? FontWeight.w700,
        color: color ?? Colors.white,
        decoration: decoration ?? TextDecoration.none,
        fontStyle: fontStyle ?? FontStyle.normal,
        height: height ?? 0.0,
        letterSpacing: letterSpacing ?? 0.0,
        overflow: textOverflow
      );

  static TextStyle fontPrompt({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
    double? height,
    double? letterSpacing,
    TextOverflow? textOverflow,
  }) =>
      TextStyle(
          fontFamily: 'Prompt',
          fontSize: fontSize ?? Dimensions.font18,
          fontWeight: fontWeight ?? FontWeight.w700,
          color: color ?? Colors.white,
          decoration: decoration ?? TextDecoration.none,
          fontStyle: fontStyle ?? FontStyle.normal,
          height: height ?? 0.0,
          letterSpacing: letterSpacing ?? 0.0,
          overflow: textOverflow
      );
}