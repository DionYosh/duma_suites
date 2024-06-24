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
  primaryColorDark: const Color(0xff01fa9a),

  // Customized primaryColorLight
  primaryColorLight: const Color(0x7e00fa9a),

  // Customized MaterialColor
  // primarySwatch: MaterialColor(),
  // Customized Color
  scaffoldBackgroundColor: const Color(0xff00FA9A),
  // Customized textTheme
  textTheme: const TextTheme(
    // displayLarge
    displayLarge: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    // displayMedium
    displayMedium: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    // displaySmall
    displaySmall: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    // headlineMedium
    headlineMedium: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    // headlineSmall
    headlineSmall: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    // titleLarge
    titleLarge: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    // titleMedium
    titleMedium: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    // titleSmall
    titleSmall: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    // bodyLarge
    bodyLarge: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    // bodyMedium
    bodyMedium: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    // bodySmall
    bodySmall: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    // labelLarge
    labelLarge: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    // labelMedium
    labelMedium: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    // labelSmall
    labelSmall: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  ),

  // typography
  typography: Typography(),

  // badgeTheme
  badgeTheme: const BadgeThemeData(),

  // iconTheme
  iconTheme: const IconThemeData(),

  // primaryIconTheme
  primaryIconTheme: const IconThemeData(),

  // Customized AppBarTheme
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff00FA9A),
    shadowColor: Color(0xff4B0082),

    elevation: 16,
    toolbarHeight: 60,
    // titleTextStyle
    titleTextStyle: TextStyle(
      decorationColor: Color(0xff00FA9A),
      color: Color(0xff4B0082),
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      fontSize: 24,
    ),

    // actionsIconTheme
    actionsIconTheme: IconThemeData(
      color: Color(0xff4B0082),
      size: 26.0,
    ),

    // iconTheme
    iconTheme: IconThemeData(
      color: Color(0xff4B0082),
      size: 26.0,
    ),
  ),

  // Customized the DrawerThemeData
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xff00FA9A),
    shadowColor: Color(0xff4B0082),
  ),

  // CardTheme
  cardTheme: CardTheme(
    shadowColor: const Color(0xff4B0082),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(
        style: BorderStyle.none,
        color: Color(0xff4B0082),
        width: 1.0,
      ),
    ),
    elevation: 8,
  ),

  // Customized the DropdownMenuThemeData
  dropdownMenuTheme: const DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      iconColor: Color(0xff4B0082),
      prefixStyle: TextStyle(
        color: Color(0xff4B0082),
      ),
      prefixIconColor: Color(0xff4B0082),
    ),
    textStyle: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
    menuStyle: MenuStyle(),
  ),

  // Customized the ScrollbarThemeData
  scrollbarTheme: const ScrollbarThemeData(),

  // Customized ListTileThemeData
  listTileTheme: const ListTileThemeData(
    // iconColor
    iconColor: Color(0xff4B0082),

    // textColor
    textColor: Color(0xff4B0082),

    // titleTextStyle
    titleTextStyle: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    // subtitleTextStyle
    subtitleTextStyle: TextStyle(
      color: Color(0xff4B0082),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),

    // shape
    shape: Border.symmetric(
      // vertical
      vertical: BorderSide(
        color: Color(0xff4B0082),
        style: BorderStyle.none,
        width: 1.0,
      ),

      // horizontal
      horizontal: BorderSide(
        color: Color(0xff4B0082),
        style: BorderStyle.none,
        width: 1.0,
      ),
    ),

    // ListTileStyle
    style: ListTileStyle.list,
  ),

  // inputDecorationTheme
  inputDecorationTheme: const InputDecorationTheme(
    // OutlineInputBorder
    border: OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Color(0xff4B0082),
        width: 2.0,
      ),
      gapPadding: 8.0,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),

    // BorderSide
    outlineBorder: BorderSide(
      style: BorderStyle.solid,
      color: Color(0xff4B0082),
      width: 16.0,
    ),

    // TextStyle
    labelStyle: TextStyle(
      color: Color(0xff4B0082),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    prefixStyle: TextStyle(),
  ),

  // Customized BottomNavigationBarThemeData
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 10,
    backgroundColor: Color(0xff4B0082),

    // selectedItemColor
    selectedItemColor: Color(0xFF00FF7F),

    // unselectedItemColor
    unselectedItemColor: Color(0xFF00FF7F),

    // selectedIconTheme
    selectedIconTheme: IconThemeData(
      color: Color(0xFF00FF7F),
      applyTextScaling: true,
    ),

    selectedLabelStyle: TextStyle(
      color: Color(0xFF00FF7F),
      fontWeight: FontWeight.w900,
      fontSize: 14,
    ),

    // unselectedIconTheme
    unselectedIconTheme: IconThemeData(
      color: Color(0xff00FA9A),
    ),

    unselectedLabelStyle: TextStyle(
      color: Color(0xff00FA9A),
      fontWeight: FontWeight.w600,
    ),
  ),
);

// List
final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
];

final customTheme = CustomTheme(themeData: themeData, items: items);
