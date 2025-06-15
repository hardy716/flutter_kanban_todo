import 'dart:ui' show Color;

import 'app_color_token.dart';

abstract class AbsAppColor {
  Color get primaryColor;

  Color get subColor;

  Color get backgroundColor;

  Color get surfaceColor;

  Color get textColor;

  Color get errorColor;

  Color get splashColor;

  Color get highlightColor;

  Color get disabledColor;

  Color get borderColor;

  Color get cardColor;

  Color get dividerColor;

  Color get focusColor;

  Color get hintColor;

  Color get hoverColor;

  Color get indicatorColor;

  Color get shadowColor;

  Color get whiteColor;

  Color get blackColor;
}

class BaseAppColor extends AbsAppColor {
  @override
  Color get primaryColor => AppColorToken.deepNavy;

  @override
  Color get subColor => AppColorToken.coolIndigo;

  @override
  Color get backgroundColor => AppColorToken.paleBlueGrey;

  @override
  Color get surfaceColor => AppColorToken.white;

  @override
  Color get errorColor => AppColorToken.red;

  @override
  Color get textColor => AppColorToken.darkBlueGrey;

  @override
  Color get splashColor => AppColorToken.lightIndigoRipple;

  @override
  Color get highlightColor => AppColorToken.pressedBlueGrey;

  @override
  Color get disabledColor => AppColorToken.softBlueGrey;

  @override
  Color get borderColor => AppColorToken.deepNavy;

  @override
  Color get cardColor => AppColorToken.deepNavy;

  @override
  Color get dividerColor => AppColorToken.deepNavy;

  @override
  Color get focusColor => AppColorToken.deepNavy;

  @override
  Color get hintColor => AppColorToken.coolIndigo;

  @override
  Color get hoverColor => AppColorToken.coolIndigo;

  @override
  Color get indicatorColor => AppColorToken.coolIndigo;

  @override
  Color get shadowColor => AppColorToken.coolIndigo;

  @override
  Color get whiteColor => AppColorToken.white;

  @override
  Color get blackColor => AppColorToken.black;
}
