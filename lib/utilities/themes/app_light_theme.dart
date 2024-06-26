import 'package:flutter/material.dart';
import 'app_colors.dart'; // Assuming a colors file with common colors

const commonTextTheme = TextTheme(
    // ... your text styles
    );

const commonButtonStyle = ButtonStyle(
    // ... your button styles
    );

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  hintColor: AppColors.accentColor,
  // ... other theme properties using commonButtonStyle and colors
  textTheme: commonTextTheme,
  // ... other theme configurations
);
