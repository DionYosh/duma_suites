import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_common_styles.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  hintColor: AppColors.accentColor,
  // ... other theme properties using commonButtonStyle and colors
  textTheme: commonTextTheme,
  // ... other theme configurations
);
