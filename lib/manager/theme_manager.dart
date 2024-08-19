import 'package:flutter/material.dart';
import 'package:gif_skill/common/share_color.dart';

class AppThemes {
  AppThemes._();

  //the light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: ShareColors.kPrimaryColor,
    useMaterial3: true,

    appBarTheme: AppBarTheme(
      color: ShareColors.kPrimaryColor,
      iconTheme: const IconThemeData(color: Colors.white),
      toolbarTextStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      // backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 2,
    ), //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          ShareColors.kPrimaryColor,
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
    ),
    //textTheme: _lightTextTheme,
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: ShareColors.kPrimaryColor,
    useMaterial3: true,

    appBarTheme: AppBarTheme(
      color: ShareColors.kPrimaryColor,
      iconTheme: const IconThemeData(color: Colors.black),
      toolbarTextStyle: const TextStyle(fontSize: 18.0, color: Colors.black),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      elevation: 2,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          ShareColors.kPrimaryColor,
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
      ),
    ),
    //textTheme: _darkTextTheme,
  );
}
