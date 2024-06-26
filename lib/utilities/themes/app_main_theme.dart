import 'package:flutter/material.dart';
import 'app_colors.dart';

class CustomTheme {
  final ThemeData themeData;
  final List<String> items;
  CustomTheme({required this.themeData, required this.items});
}

// Define a common text theme to avoid repetition
const TextTheme commonTextTheme = TextTheme(
  // displayLarge
  displayLarge: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
  // displayMedium
  displayMedium: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  ),
  // displaySmall
  displaySmall: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  // headlineMedium
  headlineMedium: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
  // headlineSmall
  headlineSmall: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  // titleLarge
  titleLarge: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  // titleMedium
  titleMedium: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  // titleSmall
  titleSmall: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  // bodyLarge
  bodyLarge: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
  // bodyMedium
  bodyMedium: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  // bodySmall
  bodySmall: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  ),
  // labelLarge
  labelLarge: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  // labelMedium
  labelMedium: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  // labelSmall
  labelSmall: TextStyle(
    color: AppColors.darkPurple,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  ),
);

// Define a common button theme to avoid repetition
ButtonStyle commonButtonStyle = ButtonStyle(
  /** **/
  iconColor: WidgetStateProperty.all(AppColors.darkPurple),
  backgroundColor: WidgetStateProperty.all(AppColors.white),
  foregroundColor: WidgetStateProperty.all(AppColors.darkPurple),
  textStyle: WidgetStateProperty.all(
    const TextStyle(
      color: AppColors.darkPurple,
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
    thumbColor: WidgetStateProperty.all(AppColors.lightTeal),
  ),
  //
  scaffoldBackgroundColor: AppColors.lightTeal,

  // Icon themes
  iconTheme: const IconThemeData(color: AppColors.darkPurple),
  primaryIconTheme: const IconThemeData(color: AppColors.darkPurple),

  // Text themes
  primaryTextTheme: commonTextTheme,
  textTheme: commonTextTheme,

  actionIconTheme: const ActionIconThemeData(),
  // AppBar theme
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.lightTeal,
    foregroundColor: AppColors.darkPurple,
    titleTextStyle: commonTextTheme.headlineSmall,
    toolbarTextStyle: commonTextTheme.bodyMedium,
    elevation: 16,
    toolbarHeight: 60,
    actionsIconTheme: const IconThemeData(
      color: AppColors.darkPurple,
      size: 26.0,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.darkPurple,
      size: 26.0,
    ),
  ),

  // Badge theme
  badgeTheme: const BadgeThemeData(
    backgroundColor: AppColors.lightTeal,
    textColor: AppColors.darkPurple,
  ),
  bannerTheme: const MaterialBannerThemeData(),
  bottomAppBarTheme: const BottomAppBarTheme(),
  // Bottom Navigation Bar theme
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkPurple,
    selectedItemColor: AppColors.lightTeal,
    unselectedItemColor: AppColors.lightTeal.withOpacity(0.6),
    selectedIconTheme: const IconThemeData(
      color: AppColors.lightTeal,
      size: 26.0,
    ),
    selectedLabelStyle: const TextStyle(
      color: AppColors.darkPurple,
      fontWeight: FontWeight.w900,
      fontSize: 14,
    ),
    unselectedIconTheme: const IconThemeData(
      color: AppColors.lightTeal,
    ),
    unselectedLabelStyle: const TextStyle(
      color: AppColors.lightTeal,
      fontWeight: FontWeight.w600,
    ),
    elevation: 10,
  ),
  bottomSheetTheme: const BottomSheetThemeData(),
  buttonBarTheme: const ButtonBarThemeData(),
  // Button themes
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.lightTeal,
    textTheme: ButtonTextTheme.primary,
    padding: const EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 20.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  cardColor: AppColors.white,
  // Card theme
  cardTheme: CardTheme(
    clipBehavior: Clip.none,
    color: AppColors.white,
    shadowColor: AppColors.darkPurple,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(
        style: BorderStyle.none,
        color: AppColors.darkPurple,
        width: 1.0,
      ),
    ),
  ),
  checkboxTheme: const CheckboxThemeData(),
  chipTheme: const ChipThemeData(),
  // Color scheme
  colorScheme: const ColorScheme.light(
    primary: AppColors.lightTeal,
    onPrimary: AppColors.darkPurple,
    surface: AppColors.lightTeal,
    onSurface: AppColors.darkPurple,
  ),

  // dataTableTheme
  dataTableTheme: const DataTableThemeData(),

  // datePickerTheme
  datePickerTheme: const DatePickerThemeData(),

  // dialogBackgroundColor
  dialogBackgroundColor: AppColors.white,

  // dialogTheme
  dialogTheme: const DialogTheme(),

  disabledColor: AppColors.midGray,

  dividerColor: AppColors.darkOlive,

  dividerTheme: const DividerThemeData(),
  // Drawer theme
  drawerTheme: DrawerThemeData(
    backgroundColor: AppColors.lightTeal,
    shadowColor: AppColors.darkPurple,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
      side: const BorderSide(
        style: BorderStyle.none,
        color: AppColors.darkPurple,
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
  focusColor: AppColors.lime,

  iconButtonTheme: const IconButtonThemeData(),
  // inputDecorationTheme
  inputDecorationTheme: const InputDecorationTheme(
    // OutlineInputBorder
    border: OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: AppColors.darkPurple,
        width: 2.0,
      ),
      gapPadding: 8.0,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),

    // BorderSide
    outlineBorder: BorderSide(
      style: BorderStyle.solid,
      color: AppColors.darkPurple,
      width: 16.0,
    ),

    // TextStyle
    labelStyle: TextStyle(
      color: AppColors.darkPurple,
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
    iconColor: AppColors.darkPurple,

    // textColor
    textColor: AppColors.darkPurple,

    // titleTextStyle
    titleTextStyle: TextStyle(
      color: AppColors.darkPurple,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    // subtitleTextStyle
    subtitleTextStyle: TextStyle(
      color: AppColors.darkPurple,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),

    // shape
    shape: Border.symmetric(
      // vertical
      vertical: BorderSide(
        color: AppColors.darkPurple,
        style: BorderStyle.none,
        width: 1.0,
      ),

      // horizontal
      horizontal: BorderSide(
        color: AppColors.darkPurple,
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
