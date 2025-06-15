import 'package:flutter/material.dart' hide Colors;

import '../color/app_color.dart';
import 'app_text.dart';

TextTheme buildTextTheme(
    AbsAppColor absColors,
    AbsAppText absTexts,
    ) {
  return TextTheme(
    //Title
    titleLarge: TextStyle(
      color: absColors.textColor,
      letterSpacing: absTexts.letterSpacingNormal,
      fontSize: absTexts.titleLargeSize,
      fontWeight: absTexts.bold,
    ),
    titleMedium: TextStyle(
      color: absColors.textColor,
      letterSpacing: absTexts.letterSpacingNormal,
      fontSize: absTexts.titleMediumSize,
      fontWeight: absTexts.bold,
    ),
    titleSmall: TextStyle(
      color: absColors.textColor,
      letterSpacing: absTexts.letterSpacingNormal,
      fontSize: absTexts.titleSmallSize,
      fontWeight: absTexts.bold,
    ),

    //Body
    bodyLarge: TextStyle(
      color: absColors.textColor,
      letterSpacing: absTexts.letterSpacingNormal,
      fontSize: absTexts.bodyLargeSize,
      fontWeight: absTexts.bold,
    ),
    bodyMedium: TextStyle(
      color: absColors.textColor,
      letterSpacing: absTexts.letterSpacingNormal,
      fontSize: absTexts.bodyMediumSize,
      fontWeight: absTexts.medium,
    ),
    bodySmall: TextStyle(
      color: absColors.textColor,
      letterSpacing: absTexts.letterSpacingNormal,
      fontSize: absTexts.bodySmallSize,
      fontWeight: absTexts.light,
    ),
  );
}

