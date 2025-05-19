import 'package:calculator/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {

  // light TextThemes
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.normal,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.normal,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.normal,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.lightPrimaryText,
      fontFamily: 'Roboto',
    ),
  );

  // dark text theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.normal,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.normal,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.normal,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.darkPrimaryText,
      fontFamily: 'Roboto',
    ),
  );

   // Define custom ColorSchemes
  static ColorScheme lightColorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: AppColors.primaryColor,
    onPrimary: AppColors.lightPrimaryBackgorund,
    secondary: AppColors.primaryColor,
    onSecondary: AppColors.lightSecondaryBackgorund,
    surface: AppColors.lightPrimaryBackgorund,
    onSurface: AppColors.darkPrimaryBackgorund,
  );

  static ColorScheme darkColorScheme = ColorScheme.dark(
    brightness: Brightness.dark,
    primary: AppColors.primaryColor,
    onPrimary: AppColors.darkPrimaryBackgorund,
    secondary: AppColors.primaryColor,
    onSecondary: AppColors.darkSecondaryBackgorund,
    surface: AppColors.darkPrimaryBackgorund,
    onSurface: AppColors.lightPrimaryBackgorund,
  );


  // Light Theme
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightSecondaryBackgorund,
    colorScheme: lightColorScheme,
    iconTheme: const IconThemeData(color: AppColors.lightPrimaryBackgorund),
    dividerColor: Colors.black12,
    appBarTheme: AppBarTheme(
      elevation: 0.5,
      backgroundColor: AppColors.primaryColor,
      surfaceTintColor: Colors.transparent,
      // iconTheme: IconThemeData(color: AppColors.lightPrimaryBackgorund, size: 3.5.h),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: Colors.black26,
    ),
    textTheme: lightTextTheme,
  );

  // dark Theme
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: darkColorScheme,
    iconTheme: const IconThemeData(color: AppColors.lightPrimaryBackgorund),
    dividerColor: Colors.grey[700],
    appBarTheme: AppBarTheme(
      elevation: 0.5,
      backgroundColor: Color(0xff1A1A1A),
      surfaceTintColor: const Color.fromARGB(0, 16, 7, 7),
      // iconTheme: IconThemeData(color: AppColors.lightPrimaryBackgorund, size: 3.5.h),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.darkPrimaryBackgorund,
      selectionColor: AppColors.darkPrimaryBackgorund,
    ),
    textTheme: darkTextTheme,
  );

}