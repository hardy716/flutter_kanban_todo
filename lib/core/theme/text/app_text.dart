import 'dart:ui' show FontWeight;

import 'app_text_token.dart';

abstract class AbsAppText {
  double get titleLargeSize;
  double get titleMediumSize;
  double get titleSmallSize;

  double get bodyLargeSize;
  double get bodyMediumSize;
  double get bodySmallSize;
  double get bodyExtraSmallSize;

  double get letterSpacingTight;
  double get letterSpacingNormal;
  double get letterSpacingWide;

  FontWeight get bold;
  FontWeight get medium;
  FontWeight get light;
}

class BaseAppText extends AbsAppText {
  @override
  double get titleLargeSize => AppTextToken.fontSize24;

  @override
  double get titleMediumSize => AppTextToken.fontSize20;

  @override
  double get titleSmallSize => AppTextToken.fontSize16;

  @override
  double get bodyLargeSize => AppTextToken.fontSize14;

  @override
  double get bodyMediumSize => AppTextToken.fontSize12;

  @override
  double get bodySmallSize => AppTextToken.fontSize10;

  @override
  double get bodyExtraSmallSize => AppTextToken.fontSize8;

  @override
  double get letterSpacingTight => AppTextToken.letterSpacingMinus0_3;

  @override
  double get letterSpacingNormal => AppTextToken.letterSpacing0_0;

  @override
  double get letterSpacingWide => AppTextToken.letterSpacing0_3;

  @override
  FontWeight get bold => AppTextToken.fontWeight800;

  @override
  FontWeight get medium => AppTextToken.fontWeight500;

  @override
  FontWeight get light => AppTextToken.fontWeight200;
}
