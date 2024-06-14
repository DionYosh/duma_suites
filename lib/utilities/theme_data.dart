import 'package:flutter/material.dart';

class CustomTheme {
  final ThemeData themeData;
  final List<String> items;

  CustomTheme({required this.themeData, required this.items});
}

final ThemeData themeData = ThemeData(
  primarySwatch: Colors.green,
  scaffoldBackgroundColor: const Color(0xFF00FF7F),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        color: Color(0xff4B0082), fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        color: Color(0xff4B0082), fontSize: 28, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        color: Color(0xff4B0082), fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Color(0xff4B0082), fontSize: 22, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Color(0xff4B0082), fontSize: 20, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        color: Color(0xff4B0082), fontSize: 18, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
        color: Color(0xff4B0082), fontSize: 16, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(
        color: Color(0xff4B0082), fontSize: 14, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        color: Color(0xff4B0082), fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(
        color: Color(0xff4B0082), fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(
        color: Color(0xff4B0082), fontSize: 12, fontWeight: FontWeight.normal),
    labelLarge: TextStyle(
        color: Color(0xff4B0082), fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(
        color: Color(0xff4B0082), fontSize: 12, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(
        color: Color(0xff4B0082), fontSize: 10, fontWeight: FontWeight.w500),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF00FF7F),
    titleTextStyle: TextStyle(color: Color(0xff4B0082), fontSize: 20),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff00FA9A),
    selectedItemColor: Color(0xff4B0082),
    unselectedItemColor: Color(0xff4B0082),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Color(0xff4B0082),
    titleTextStyle: TextStyle(color: Color(0xff4B0082)),
    subtitleTextStyle: TextStyle(color: Colors.grey),
  ),
  // Customize the Drawer Theme
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xff00FA9A), // Background color of the drawer
  ),
);

final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
];

final customTheme = CustomTheme(themeData: themeData, items: items);