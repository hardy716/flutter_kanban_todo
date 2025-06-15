import 'package:flutter/material.dart';

import 'color/app_color_extension.dart';
import 'color/app_color_scheme.dart';
import 'color/app_color.dart';
import 'text/app_text_theme.dart';
import 'text/app_text.dart';

class AppTheme {
  static late AbsAppColor _appColors;
  static late AbsAppText _appTexts;

  static void init({required AbsAppColor colors, required AbsAppText texts}) {
    _appColors = colors;
    _appTexts = texts;
  }

  static ThemeData get themeData => ThemeData(
    textTheme: buildTextTheme(_appColors, _appTexts),
    colorScheme: buildColorScheme(_appColors),
    splashColor: _appColors.splashColor,
    highlightColor: _appColors.highlightColor,
    disabledColor: _appColors.disabledColor,
    extensions: [
      AppColorExtension(
        splashColor: _appColors.splashColor,
        highlightColor: _appColors.highlightColor,
        borderColor: _appColors.borderColor,
        cardColor: _appColors.cardColor,
        disabledColor: _appColors.disabledColor,
        dividerColor: _appColors.dividerColor,
        focusColor: _appColors.focusColor,
        hintColor: _appColors.hintColor,
        hoverColor: _appColors.hoverColor,
        indicatorColor: _appColors.indicatorColor,
        shadowColor: _appColors.shadowColor,
      ),
    ],
    useMaterial3: true,
  );
}
