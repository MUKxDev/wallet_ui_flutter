import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_ui/Theme/app_colors.dart';
import 'package:wallet_ui/Theme/app_text_theme.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.textTheme,
    colorScheme: const ColorScheme.dark(
      primary: AppColor.peach,
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    useMaterial3: true,
  );
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.textTheme,
    colorScheme: const ColorScheme.light(
      primary: AppColor.peach,
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    useMaterial3: true,
  );
}
