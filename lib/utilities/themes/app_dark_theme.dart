import 'package:flutter/material.dart';
import 'app_colors.dart';

const commonTextTheme = TextTheme(
    // ... your text styles
    );

const commonButtonStyle = ButtonStyle(
    // ... your button styles
    );

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkPrimaryColor,
  hintColor: AppColors.darkAccentColor,
  textTheme: commonTextTheme,
);
