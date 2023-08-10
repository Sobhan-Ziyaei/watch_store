import 'package:flutter/widgets.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/ui/constants/colors.dart';

class LightAppTextStyle {
  LightAppTextStyle._();

  static const TextStyle title = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.title,
  );

  static const TextStyle hint = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.hint,
  );
}
