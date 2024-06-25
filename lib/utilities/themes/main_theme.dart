import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Define a class to hold custom theme data and items
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
  displayLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  ),
  displaySmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  titleLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  titleMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  titleSmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
  bodyMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  bodySmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  ),
  labelLarge: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  labelMedium: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  labelSmall: TextStyle(
    color: CustomColors.widgetTxtColor,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  ),
);

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

// Define the theme data for the application
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

  // Color scheme
  colorScheme: const ColorScheme.light(
    primary: CustomColors.widgetBgColor,
    onPrimary: CustomColors.widgetTxtColor,
    surface: CustomColors.widgetBgColor,
    onSurface: CustomColors.widgetTxtColor,
  ),

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

  canvasColor: CustomColors.whiteBgColor,
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
  colorSchemeSeed: CustomColors.whiteBgColor,
  cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(),

  dataTableTheme: const DataTableThemeData(),
  datePickerTheme: const DatePickerThemeData(),
  dialogBackgroundColor: CustomColors.whiteBgColor,
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
  // Dropdown menu theme
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: commonTextTheme.bodyMedium,
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
  // Input decoration theme
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    floatingLabelStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    helperStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    hintStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    hintFadeDuration: Duration.zero,
    errorStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    isDense: false,
    contentPadding: EdgeInsets.zero,
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    suffixStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    counterStyle: TextStyle(
      color: CustomColors.widgetTxtColor,
    ),
    filled: false,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CustomColors.widgetTxtColor),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CustomColors.widgetTxtColor),
    ),
    border: OutlineInputBorder(),
    // alignLabelWithHint: false,
    constraints: BoxConstraints(),
  ),

  menuBarTheme: const MenuBarThemeData(),
  menuButtonTheme: const MenuButtonThemeData(),
  menuTheme: const MenuThemeData(),

  navigationBarTheme: const NavigationBarThemeData(),
  navigationDrawerTheme: const NavigationDrawerThemeData(),
  navigationRailTheme: const NavigationRailThemeData(),

  // ListTile theme
  listTileTheme: const ListTileThemeData(
    textColor: CustomColors.widgetTxtColor,
    iconColor: CustomColors.widgetTxtColor,
    tileColor: CustomColors.widgetBgColor,
    shape: Border.symmetric(
      vertical: BorderSide(
        color: CustomColors.widgetTxtColor,
        style: BorderStyle.none,
        width: 1.0,
      ),
      horizontal: BorderSide(
        color: CustomColors.widgetTxtColor,
        style: BorderStyle.none,
        width: 1.0,
      ),
    ),
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

    style: ListTileStyle.list,
  ),

  // outlinedButtonTheme
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: commonButtonStyle,
  ),

  popupMenuTheme: const PopupMenuThemeData(),
  // primaryColor: ,
  // primaryColorDark: ,
  // primaryColorLight: ,
  // primarySwatch: ,
  progressIndicatorTheme: const ProgressIndicatorThemeData(),

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
  // Typography settings
  typography: Typography.material2021(
    black: commonTextTheme,
    white: commonTextTheme,
    englishLike: commonTextTheme,
    tall: commonTextTheme,
  ),

  // unselectedWidgetColor: ,
  // useMaterial3: ,

  // visualDensity: ,
);

// List of items
final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
];

// Create an instance of CustomTheme with theme data and items
final customTheme = CustomTheme(themeData: themeData, items: items);
