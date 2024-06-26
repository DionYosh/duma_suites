import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_common_styles.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkPrimaryColor,
  hintColor: AppColors.darkAccentColor,
  textTheme: commonTextTheme,
);
