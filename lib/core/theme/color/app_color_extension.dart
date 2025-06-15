import 'dart:ui' show Color;

import 'package:flutter/material.dart' show immutable, ThemeExtension;

@immutable
class AppColorExtension extends ThemeExtension<AppColorExtension> {
  final Color splashColor;
  final Color highlightColor;
  final Color disabledColor;
  final Color borderColor;
  final Color cardColor;
  final Color dividerColor;
  final Color focusColor;
  final Color hintColor;
  final Color hoverColor;
  final Color indicatorColor;
  final Color shadowColor;

  const AppColorExtension({
    required this.splashColor,
    required this.highlightColor,
    required this.disabledColor,
    required this.borderColor,
    required this.cardColor,
    required this.dividerColor,
    required this.focusColor,
    required this.hintColor,
    required this.hoverColor,
    required this.indicatorColor,
    required this.shadowColor,
  });

  @override
  AppColorExtension copyWith({
    Color? splashColor,
    Color? highlightColor,
    Color? borderColor,
    Color? cardColor,
    Color? disabledColor,
    Color? dividerColor,
    Color? focusColor,
    Color? hintColor,
    Color? hoverColor,
    Color? indicatorColor,
    Color? shadowColor,
  }) {
    return AppColorExtension(
      splashColor: splashColor ?? this.splashColor,
      highlightColor: highlightColor ?? this.highlightColor,
      borderColor: borderColor ?? this.borderColor,
      cardColor: cardColor ?? this.cardColor,

      disabledColor: disabledColor ?? this.disabledColor,
      dividerColor: dividerColor ?? this.dividerColor,
      focusColor: focusColor ?? this.focusColor,
      hintColor: hintColor ?? this.hintColor,
      hoverColor: hoverColor ?? this.hoverColor,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      shadowColor: shadowColor ?? this.shadowColor,
    );
  }

  @override
  AppColorExtension lerp(ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) return this;
    return AppColorExtension(
      splashColor: Color.lerp(splashColor, other.splashColor, t) ?? splashColor,
      highlightColor: Color.lerp(highlightColor, other.highlightColor, t) ?? highlightColor,
      borderColor: Color.lerp(borderColor, other.borderColor, t) ?? borderColor,
      cardColor: Color.lerp(cardColor, other.cardColor, t) ?? cardColor,
      disabledColor: Color.lerp(cardColor, other.cardColor, t) ?? disabledColor,
      dividerColor: Color.lerp(cardColor, other.cardColor, t) ?? dividerColor,
      focusColor: Color.lerp(cardColor, other.cardColor, t) ?? focusColor,
      hintColor: Color.lerp(cardColor, other.cardColor, t) ?? hintColor,
      hoverColor: Color.lerp(cardColor, other.cardColor, t) ?? hoverColor,
      indicatorColor: Color.lerp(cardColor, other.cardColor, t) ?? indicatorColor,
      shadowColor: Color.lerp(cardColor, other.cardColor, t) ?? cardColor,
    );
  }
}
