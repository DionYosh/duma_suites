import 'package:flutter/material.dart';

class CustomTheme {
  final ThemeData themeData;
  final List<String> items;

  CustomTheme({required this.themeData, required this.items});
}

final ThemeData themeData = ThemeData(
  primarySwatch: Colors.teal,
  scaffoldBackgroundColor: Colors.teal,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(
        color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),
    labelLarge: TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(
        color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(
        color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.teal,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.white,
    titleTextStyle: TextStyle(color: Colors.white),
    subtitleTextStyle: TextStyle(color: Colors.grey),
  ),
  // Customize the Drawer Theme
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.teal, // Background color of the drawer
  ),
);

final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
];

final customTheme = CustomTheme(themeData: themeData, items: items);
