import 'package:flutter/material.dart';

// Define constants for widget colors
const Color widgetBackgroundColor = Color(0xff00FA9A);
const Color widgetTextColor = Color(0xff4B0082);

// Define the theme data for the application
final ThemeData themeData = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: widgetTextColor),
    floatingLabelStyle: TextStyle(color: widgetTextColor),
    helperStyle: TextStyle(color: widgetTextColor),
    hintStyle: TextStyle(color: widgetTextColor),
    hintFadeDuration: Duration.zero,
    errorStyle: TextStyle(color: widgetTextColor),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    isDense: false,
    contentPadding:
        EdgeInsets.zero, // Corrected from EdgeInsetsGeometry.infinity
    isCollapsed: false,
    prefixStyle: TextStyle(color: widgetTextColor),
    suffixStyle: TextStyle(color: widgetTextColor),
    counterStyle: TextStyle(color: widgetTextColor),
    filled: false,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: widgetTextColor), // Added for focus state
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red), // Added for error state
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), // Added for disabled state
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: widgetTextColor), // Added for enabled state
    ),
    border: OutlineInputBorder(), // Updated from InputBorder.none
    alignLabelWithHint: false,
    constraints: BoxConstraints(),
  ),
  materialTapTargetSize: MaterialTapTargetSize.padded,
  pageTransitionsTheme: const PageTransitionsTheme(),
  platform: TargetPlatform.android,
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(
        widgetBackgroundColor), // Corrected property type
  ),
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: widgetBackgroundColor,
    onPrimary: widgetTextColor,
    surface: widgetBackgroundColor,
    onSurface: widgetTextColor,
  ),
  iconTheme: const IconThemeData(color: widgetTextColor),
  primaryIconTheme: const IconThemeData(color: widgetTextColor),
  primaryTextTheme: const TextTheme(
    displayLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: widgetTextColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: widgetTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: widgetTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      color: widgetTextColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: widgetTextColor,
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: widgetTextColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: widgetTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: widgetTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      color: widgetTextColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      color: widgetTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: widgetTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: widgetTextColor,
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  ),
  typography: Typography(
    black: const TextTheme(bodyLarge: TextStyle(color: widgetTextColor)),
    white: const TextTheme(
      displayLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: widgetTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: widgetTextColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
    englishLike: const TextTheme(
      displayLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: widgetTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: widgetTextColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
    tall: const TextTheme(
      displayLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: widgetTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: widgetTextColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        color: widgetTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: widgetTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: widgetTextColor,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
);

// Main function to run the application
void main() {
  runApp(
    MaterialApp(
      theme: themeData,
      home: Scaffold(
        body: Center(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    ),
  );
}
