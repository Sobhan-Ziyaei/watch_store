import 'package:flutter/material.dart';
import 'package:watch_store/ui/constants/colors.dart';
import 'package:watch_store/ui/constants/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.focused)) {
          return AppColors.focusedFillText;
        } else {
          return AppColors.unFocusedFillText;
        }
      }),
      contentPadding: const EdgeInsets.all(AppDimens.medium),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.medium),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.medium),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
    ),
  );
}
