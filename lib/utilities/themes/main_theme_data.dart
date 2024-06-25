import 'package:flutter/material.dart';

class CustomTheme {
  final ThemeData themeData;
  final List<String> items;
  CustomTheme({required this.themeData, required this.items});
}

// Define constants for widget colors
const Color widgetBgColor = Color(0xff00FA9A);
const Color widgetTxtColor = Color(0xff4B0082);

// Define a common text theme to avoid repetition
const TextTheme commonTextTheme = TextTheme(
  // displayLarge
  displayLarge: TextStyle(
    color: widgetTxtColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
  // displayMedium
  displayMedium: TextStyle(
    color: widgetTxtColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  ),
  // displaySmall
  displaySmall: TextStyle(
    color: widgetTxtColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  // headlineMedium
  headlineMedium: TextStyle(
    color: widgetTxtColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
  // headlineSmall
  headlineSmall: TextStyle(
    color: widgetTxtColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  // titleLarge
  titleLarge: TextStyle(
    color: widgetTxtColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  // titleMedium
  titleMedium: TextStyle(
    color: widgetTxtColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  // titleSmall
  titleSmall: TextStyle(
    color: widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  // bodyLarge
  bodyLarge: TextStyle(
    color: widgetTxtColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
  // bodyMedium
  bodyMedium: TextStyle(
    color: widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  // bodySmall
  bodySmall: TextStyle(
    color: widgetTxtColor,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  ),
  // labelLarge
  labelLarge: TextStyle(
    color: widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  // labelMedium
  labelMedium: TextStyle(
    color: widgetTxtColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  // labelSmall
  labelSmall: TextStyle(
    color: widgetTxtColor,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  ),
);

final ThemeData themeData = ThemeData(
  // Customized primaryColor
  primaryColor: widgetBgColor,

  // Customized primaryColorDark
  primaryColorDark: widgetBgColor,

  // Customized primaryColorLight
  primaryColorLight: widgetBgColor,

  // Customized MaterialColor
  // primarySwatch: MaterialColor(),
  // Customized Color
  scaffoldBackgroundColor: widgetBgColor,
  // Customized textTheme
  textTheme: const TextTheme(
    // displayLarge
    displayLarge: TextStyle(
      color: widgetTxtColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    // displayMedium
    displayMedium: TextStyle(
      color: widgetTxtColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    // displaySmall
    displaySmall: TextStyle(
      color: widgetTxtColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    // headlineMedium
    headlineMedium: TextStyle(
      color: widgetTxtColor,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    // headlineSmall
    headlineSmall: TextStyle(
      color: widgetTxtColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    // titleLarge
    titleLarge: TextStyle(
      color: widgetTxtColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    // titleMedium
    titleMedium: TextStyle(
      color: widgetTxtColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    // titleSmall
    titleSmall: TextStyle(
      color: widgetTxtColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    // bodyLarge
    bodyLarge: TextStyle(
      color: widgetTxtColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    // bodyMedium
    bodyMedium: TextStyle(
      color: widgetTxtColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    // bodySmall
    bodySmall: TextStyle(
      color: widgetTxtColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    // labelLarge
    labelLarge: TextStyle(
      color: widgetTxtColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    // labelMedium
    labelMedium: TextStyle(
      color: widgetTxtColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    // labelSmall
    labelSmall: TextStyle(
      color: widgetTxtColor,
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

  // Customized the ScrollbarThemeData
  scrollbarTheme: const ScrollbarThemeData(),

  // Customized AppBarTheme
  // AppBar theme
  appBarTheme: AppBarTheme(
    backgroundColor: widgetBgColor,
    foregroundColor: widgetTxtColor,
    titleTextStyle: commonTextTheme.headlineSmall,
    toolbarTextStyle: commonTextTheme.bodyMedium,
    elevation: 16,
    toolbarHeight: 60,
    actionsIconTheme: const IconThemeData(
      color: widgetTxtColor,
      size: 26.0,
    ),
    iconTheme: const IconThemeData(
      color: widgetTxtColor,
      size: 26.0,
    ),
  ),

  // Customized the DrawerThemeData
  drawerTheme: const DrawerThemeData(
    backgroundColor: widgetBgColor,
    shadowColor: widgetTxtColor,
  ),

  // CardTheme
  cardTheme: CardTheme(
    shadowColor: widgetTxtColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(
        style: BorderStyle.none,
        color: widgetTxtColor,
        width: 1.0,
      ),
    ),
    elevation: 8,
  ),

  // Customized the DropdownMenuThemeData
  dropdownMenuTheme: const DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      iconColor: widgetTxtColor,
      prefixStyle: TextStyle(
        color: widgetTxtColor,
      ),
      prefixIconColor: widgetTxtColor,
    ),
    textStyle: TextStyle(
      color: widgetTxtColor,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
    menuStyle: MenuStyle(),
  ),

  // Customized ListTileThemeData
  listTileTheme: const ListTileThemeData(
    // iconColor
    iconColor: widgetTxtColor,

    // textColor
    textColor: widgetTxtColor,

    // titleTextStyle
    titleTextStyle: TextStyle(
      color: widgetTxtColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    // subtitleTextStyle
    subtitleTextStyle: TextStyle(
      color: widgetTxtColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),

    // shape
    shape: Border.symmetric(
      // vertical
      vertical: BorderSide(
        color: widgetTxtColor,
        style: BorderStyle.none,
        width: 1.0,
      ),

      // horizontal
      horizontal: BorderSide(
        color: widgetTxtColor,
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
        color: widgetTxtColor,
        width: 2.0,
      ),
      gapPadding: 8.0,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),

    // BorderSide
    outlineBorder: BorderSide(
      style: BorderStyle.solid,
      color: widgetTxtColor,
      width: 16.0,
    ),

    // TextStyle
    labelStyle: TextStyle(
      color: widgetTxtColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    prefixStyle: TextStyle(),
  ),

  // Customized BottomNavigationBarThemeData
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 10,
    backgroundColor: widgetTxtColor,

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
      color: widgetBgColor,
    ),

    unselectedLabelStyle: TextStyle(
      color: widgetBgColor,
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
