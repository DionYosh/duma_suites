import 'package:flutter/material.dart';

class CustomTheme {
  final ThemeData themeData;
  final List<String> items;
  CustomTheme({required this.themeData, required this.items});
}

// Define constants for widget colors
class CustomColors {
  static const Color widgetBgColor = Color(0xff00FA9A);
  static const Color widgetTxtColor = Color(0xff4B0082);
  static const Color whiteBgColor = Color(0xffffffff);
  static const Color grayTxtColor = Color(0xff808080);
  static const Color limeTxtColor = Color(0xff00FF00);
  static const Color widgetDividerColor = Color(0xff0d4a32);
}

// Define a common text theme to avoid repetition
const TextTheme commonTextTheme = TextTheme(
  // displayLarge
  displayLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
  // displayMedium
  displayMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  ),
  // displaySmall
  displaySmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  // headlineMedium
  headlineMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
  // headlineSmall
  headlineSmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  // titleLarge
  titleLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  // titleMedium
  titleMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  // titleSmall
  titleSmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  // bodyLarge
  bodyLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
  // bodyMedium
  bodyMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  // bodySmall
  bodySmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  ),
  // labelLarge
  labelLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  // labelMedium
  labelMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  // labelSmall
  labelSmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  ),
);

// Define a common button theme to avoid repetition
ButtonStyle commonButtonStyle = ButtonStyle(
  /** **/
  iconColor: WidgetStateProperty.all(CustomColors.widgetTxtColor),
  backgroundColor: WidgetStateProperty.all(CustomColors.whiteBgColor),
  foregroundColor: WidgetStateProperty.all(CustomColors.widgetTxtColor),
  textStyle: WidgetStateProperty.all(
    const TextStyle(
      color: CustomColors.widgetTxtColor,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  padding: WidgetStateProperty.all(
    const EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 20.0,
    ),
  ),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);



final ThemeData themeData = ThemeData(
  // General configurations
  materialTapTargetSize: MaterialTapTargetSize.padded,
  pageTransitionsTheme: const PageTransitionsTheme(),
  platform: TargetPlatform.android,
  //
  // Scrollbar theme
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(CustomColors.widgetBgColor),
  ),
  //
  scaffoldBackgroundColor: CustomColors.widgetBgColor,

  // Icon themes
  iconTheme: const IconThemeData(color: CustomColors.widgetTxtColor),
  primaryIconTheme: const IconThemeData(color: CustomColors.widgetTxtColor),

  // Text themes
  primaryTextTheme: commonTextTheme,
  textTheme: commonTextTheme,

  actionIconTheme: const ActionIconThemeData(),
  // AppBar theme
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.widgetBgColor,
    foregroundColor: CustomColors.widgetTxtColor,
    titleTextStyle: commonTextTheme.headlineSmall,
    toolbarTextStyle: commonTextTheme.bodyMedium,
    elevation: 16,
    toolbarHeight: 60,
    actionsIconTheme: const IconThemeData(
      color: CustomColors.widgetTxtColor,
      size: 26.0,
    ),
    iconTheme: const IconThemeData(
      color: CustomColors.widgetTxtColor,
      size: 26.0,
    ),
  ),

  // Badge theme
  badgeTheme: const BadgeThemeData(
    backgroundColor: CustomColors.widgetBgColor,
    textColor: CustomColors.widgetTxtColor,
  ),
  bannerTheme: const MaterialBannerThemeData(),
  bottomAppBarTheme: const BottomAppBarTheme(),
  // Bottom Navigation Bar theme
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: CustomColors.widgetTxtColor,
    selectedItemColor: CustomColors.widgetBgColor,
    unselectedItemColor: CustomColors.widgetBgColor.withOpacity(0.6),
    selectedIconTheme: const IconThemeData(
      color: CustomColors.widgetBgColor,
      size: 26.0,
    ),
    selectedLabelStyle: const TextStyle(
      color: CustomColors.widgetTxtColor,
      fontWeight: FontWeight.w900,
      fontSize: 14,
    ),
    unselectedIconTheme: const IconThemeData(
      color: CustomColors.widgetBgColor,
    ),
    unselectedLabelStyle: const TextStyle(
      color: CustomColors.widgetBgColor,
      fontWeight: FontWeight.w600,
    ),
    elevation: 10,
  ),
  bottomSheetTheme: const BottomSheetThemeData(),
  buttonBarTheme: const ButtonBarThemeData(),
  // Button themes
  buttonTheme: ButtonThemeData(
    buttonColor: CustomColors.widgetBgColor,
    textTheme: ButtonTextTheme.primary,
    padding: const EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 20.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  cardColor: CustomColors.whiteBgColor,
  // Card theme
  cardTheme: CardTheme(
    clipBehavior: Clip.none,
    color: CustomColors.whiteBgColor,
    shadowColor: CustomColors.widgetTxtColor,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(
        style: BorderStyle.none,
        color: CustomColors.widgetTxtColor,
        width: 1.0,
      ),
    ),
  ),
  checkboxTheme: const CheckboxThemeData(),
  chipTheme: const ChipThemeData(),
  // Color scheme
  colorScheme: const ColorScheme.light(
    primary: CustomColors.widgetBgColor,
    onPrimary: CustomColors.widgetTxtColor,
    surface: CustomColors.widgetBgColor,
    onSurface: CustomColors.widgetTxtColor,
  ),

  // dataTableTheme
  dataTableTheme: const DataTableThemeData(),

  // datePickerTheme
  datePickerTheme: const DatePickerThemeData(),

  // dialogBackgroundColor
  dialogBackgroundColor: CustomColors.whiteBgColor,

  // dialogTheme
  dialogTheme: const DialogTheme(),

  disabledColor: CustomColors.grayTxtColor,

  dividerColor: CustomColors.widgetDividerColor,

  dividerTheme: const DividerThemeData(),
  // Drawer theme
  drawerTheme: DrawerThemeData(
    backgroundColor: CustomColors.widgetBgColor,
    shadowColor: CustomColors.widgetTxtColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
      side: const BorderSide(
        style: BorderStyle.none,
        color: CustomColors.widgetTxtColor,
      ),
    ),
  ),

  // elevatedButtonTheme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: commonButtonStyle,
  ),
  expansionTileTheme: const ExpansionTileThemeData(),

  filledButtonTheme: const FilledButtonThemeData(),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(),
  focusColor: CustomColors.limeTxtColor,

  iconButtonTheme: const IconButtonThemeData(),
  // inputDecorationTheme
  inputDecorationTheme: const InputDecorationTheme(
    // OutlineInputBorder
    border: OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: CustomColors.widgetTxtColor,
        width: 2.0,
      ),
      gapPadding: 8.0,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),

    // BorderSide
    outlineBorder: BorderSide(
      style: BorderStyle.solid,
      color: CustomColors.widgetTxtColor,
      width: 16.0,
    ),

    // TextStyle
    labelStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    prefixStyle: TextStyle(),
  ),

  // menuBarTheme
  menuBarTheme: const MenuBarThemeData(),
  // menuButtonTheme
  menuButtonTheme: const MenuButtonThemeData(),
  // menuTheme
  menuTheme: const MenuThemeData(),

  // navigationBarTheme
  navigationBarTheme: const NavigationBarThemeData(),
  // navigationDrawerTheme
  navigationDrawerTheme: const NavigationDrawerThemeData(),
  // navigationRailTheme
  navigationRailTheme: const NavigationRailThemeData(),

  // listTileTheme
  listTileTheme: const ListTileThemeData(
    // iconColor
    iconColor: CustomColors.widgetTxtColor,

    // textColor
    textColor: CustomColors.widgetTxtColor,

    // titleTextStyle
    titleTextStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    // subtitleTextStyle
    subtitleTextStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),

    // shape
    shape: Border.symmetric(
      // vertical
      vertical: BorderSide(
        color: CustomColors.widgetTxtColor,
        style: BorderStyle.none,
        width: 1.0,
      ),

      // horizontal
      horizontal: BorderSide(
        color: CustomColors.widgetTxtColor,
        style: BorderStyle.none,
        width: 1.0,
      ),
    ),

    // ListTileStyle
    style: ListTileStyle.list,
  ),

  // outlinedButtonTheme
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: commonButtonStyle,
  ),

  // primaryColor: ,
  // primaryColorDark: ,
  // primaryColorLight: ,
  // primarySwatch: ,
  popupMenuTheme: const PopupMenuThemeData(),
  progressIndicatorTheme: const ProgressIndicatorThemeData(),

  // radioTheme
  radioTheme: const RadioThemeData(),

  // shadowColor: ,
  // splashColor: ,
  // splashFactory: ,
  // secondaryHeaderColor:,
  sliderTheme: const SliderThemeData(),
  snackBarTheme: const SnackBarThemeData(),
  switchTheme: const SwitchThemeData(),
  searchBarTheme: const SearchBarThemeData(),
  searchViewTheme: const SearchViewThemeData(),
  segmentedButtonTheme: const SegmentedButtonThemeData(),

  tabBarTheme: const TabBarTheme(),
  // textButtonTheme
  textButtonTheme: TextButtonThemeData(
    style: commonButtonStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(),
  timePickerTheme: const TimePickerThemeData(),
  toggleButtonsTheme: const ToggleButtonsThemeData(),
  tooltipTheme: const TooltipThemeData(),

  // Customized BottomNavigationBarThemeData
);

// List
final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
];

final customTheme = CustomTheme(themeData: themeData, items: items);
