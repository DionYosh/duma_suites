import 'package:flutter/material.dart';

class CustomTheme {
  final ThemeData themeData;
  final List<String> items;
  CustomTheme({required this.themeData, required this.items});
}

final ThemeData themeData = ThemeData(
  // Customized primaryColor
  primaryColor: const Color(0xff00FA9A),

  // Customized primaryColorDark
  primaryColorDark: const Color(0xff00FA9A),

  // Customized primaryColorLight
  primaryColorLight: const Color(0xff00FA9A),

  // Customized MaterialColor
  // primarySwatch: MaterialColor(),
  // Customized Color
  scaffoldBackgroundColor: const Color(0xff00FA9A),
  // Customized TextTheme
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

  // Customized AppBarTheme
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff00FA9A),
    shadowColor: Color(0xff4B0082),
    iconTheme: IconThemeData(),
    elevation: 16,
    toolbarHeight: 60,
    titleTextStyle: TextStyle(
      decorationColor: Color(0xff00FA9A),
      color: Color(0xff4B0082),
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      fontSize: 20,
    ),
  ),

  // Customized the DrawerThemeData
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xff00FA9A),
    // scrimColor: Color(0xff00FA9A),
    // surfaceTintColor: Color(0xff00FA9A),
    shadowColor: Color(0xff4B0082),
  ),

  // Customized the DropdownMenuThemeData
  dropdownMenuTheme: const DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(),
    textStyle: TextStyle(),
    menuStyle: MenuStyle(),
  ),

  // Customized the ScrollbarThemeData
  scrollbarTheme: const ScrollbarThemeData(),

  // Customized BottomNavigationBarThemeData
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 10,
    backgroundColor: Color(0xff4B0082),
    selectedIconTheme: IconThemeData(),
    unselectedIconTheme: IconThemeData(),
    selectedItemColor: Color(0xff00FA9A),
    unselectedItemColor: Color(0xFF00FF7F),
  ),

  // Customized ListTileThemeData
  listTileTheme: const ListTileThemeData(
    iconColor: Color(0xff4B0082),
    titleTextStyle: TextStyle(color: Color(0xff4B0082)),
    subtitleTextStyle: TextStyle(color: Colors.grey),
  ),
);

final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
];

final customTheme = CustomTheme(themeData: themeData, items: items);
