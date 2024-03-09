/*
------------------------------------------------------------------------
| APP THEMES                     | For: Oaks Intelligence               |
| ----------------------------------------------------------------------
| By: Caleb Jesusegun            | Date: 09 - Mar - 2024                |
| ----------------------------------------------------------------------
| Modified by:                   | Comments:                            |
------------------------------------------------------------------------
NB:
*/

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extension/app_typography.dart';
import 'app_text_styles.dart';

class AppThemes {
  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.green,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, brightness: Brightness.light),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textSelectionTheme:
      const TextSelectionThemeData(cursorColor: Colors.green),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.titleRegular16.copyWith(
          color: Colors.grey,
        ),
        labelStyle: AppTextStyles.labelRegular12.copyWith(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            color: Colors.grey.shade600,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            color: Colors.grey.shade600,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(
            color: Colors.green,
          ),
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[
        AppTypography(
          headlineBold28: AppTextStyles.headlineBold28,
          headlineBold24: AppTextStyles.headlineBold24,
          headlineBold22: AppTextStyles.headlineBold22,
          titleRegular16: AppTextStyles.titleRegular16,
          titleBold16: AppTextStyles.titleBold16,
          labelRegular12: AppTextStyles.labelRegular12,
          labelMedium16: AppTextStyles.labelMedium16,
          labelRegular14: AppTextStyles.labelRegular14,
          labelRegular16: AppTextStyles.labelRegular16,
        ),
      ],
    );
  }
}
