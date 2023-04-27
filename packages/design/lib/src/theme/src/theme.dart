import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'const.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  bottomSheetTheme: kBottomSheetTheme,
  colorScheme: kColorSchemeLight,
  appBarTheme: kAppBarTheme,
  scaffoldBackgroundColor: kScaffoldBackground,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: kPrimaryColor,
  dividerTheme: dividerThemeData,
  primaryColorDark: kPrimaryDarkerColor,
  brightness: Brightness.light,
  checkboxTheme: kCheckBoxTheme,
  dialogTheme: dialogTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  textButtonTheme: textButtonTheme,
  navigationBarTheme: navigationBarThemeData,
  bottomNavigationBarTheme: kBottomNavigationBarThemeData,
  inputDecorationTheme: kInputDecorationTheme,
  iconTheme: kIconTheme,
  fontFamily: GoogleFonts.notoSans().fontFamily,

  tabBarTheme: kTabBarTheme,
  primaryIconTheme: kPrimaryIconTheme,
  primaryTextTheme: Typography.material2014(
    platform: defaultTargetPlatform,
  ).black.apply(
        bodyColor: kPrimaryColor,
      ),
);
final darkTheme = ThemeData(
  appBarTheme: kAppBarTheme,
  useMaterial3: true,
  bottomSheetTheme: kBottomSheetTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: kPrimaryColor,
  dividerTheme: dividerThemeData,
  primaryColorDark: kPrimaryDarkerColor,
  brightness: Brightness.dark,
  checkboxTheme: kCheckBoxTheme,
  dialogTheme: dialogTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  textButtonTheme: textButtonTheme,
  navigationBarTheme: navigationBarThemeData,
  bottomNavigationBarTheme: kBottomNavigationBarThemeData,
  inputDecorationTheme: kInputDecorationTheme,
  iconTheme: kIconTheme,
  fontFamily: GoogleFonts.notoSans().fontFamily,
  tabBarTheme: kTabBarTheme,
  primaryIconTheme: kPrimaryIconTheme,
  primaryTextTheme: Typography.material2014(
    platform: defaultTargetPlatform,
  ).black.apply(
        bodyColor: kPrimaryColor,
      ),
);


const kTabBarTheme = TabBarTheme(
  indicatorSize: TabBarIndicatorSize.tab,
);

const dividerThemeData = DividerThemeData(
  color: kGrey7,
);

final navigationBarThemeData = NavigationBarThemeData(
  indicatorColor: Colors.transparent,
  labelTextStyle: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.selected)) {
        return const TextStyle(color: kPrimaryColor);
      }
      return const TextStyle(color: kGrey6);
    },
  ),
);

final kColorSchemeLight = ColorScheme.light(
  primary: kPrimaryColor,
  secondary: kSecondaryColor,
  outline: kOutlineColor,
  surface: kWhite,
  primaryContainer: kPrimaryColor.withOpacity(0.2),
  onPrimaryContainer: kPrimaryColor,
);


AppBarTheme kAppBarTheme = const AppBarTheme(
  centerTitle: false,
  elevation: 1,
);

const kBottomSheetTheme = BottomSheetThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusConstrains.bottomSheet,
  ),
);

const kPrimaryIconTheme = IconThemeData(
  color: kPrimaryColor,
  size: kIconSize,
);

const kIconTheme = IconThemeData(
  size: kIconSize,
);

const _border = OutlineInputBorder(
  borderRadius: BorderRadiusConstrains.texFiled,
  borderSide: BorderSide(color: kGrey7, width: .5),
);

const kInputDecorationTheme = InputDecorationTheme(
  fillColor: kGrey7,
  contentPadding: EdgeInsetsConstrains.textFiled,
  border: _border,
  enabledBorder: _border,
  disabledBorder: _border,
);
const kCheckBoxTheme = CheckboxThemeData(
  side: BorderSide(width: 1),
  fillColor: MaterialStatePropertyAll(kPrimaryColor),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusConstrains.checkBox,
  ),
);

const kBottomNavigationBarThemeData = BottomNavigationBarThemeData(
  selectedItemColor: kPrimaryColor,
  unselectedItemColor: kGrey4,
);

final dialogTheme = DialogTheme(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14),
  ),
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: EdgeInsetsConstrains.button,
    shape: _buttonShape,
  ),
);

final textButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: EdgeInsetsConstrains.button,
    shape: _buttonShape,
  ),
);

final outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    padding: EdgeInsetsConstrains.button,
    shape: _buttonShape,
  ),
);

const _buttonShape = RoundedRectangleBorder(
  borderRadius: BorderRadiusConstrains.button,
);
