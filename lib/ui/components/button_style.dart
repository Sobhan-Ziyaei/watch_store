import 'package:flutter/material.dart';
import 'package:watch_store/ui/constants/dimens.dart';

class AppButtonStyle {
  AppButtonStyle._();

  static ButtonStyle mainButtonStyle = ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.medium),
      ),
    ),
  );
}
