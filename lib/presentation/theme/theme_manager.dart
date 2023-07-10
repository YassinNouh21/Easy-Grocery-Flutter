import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';
import 'package:quick_grocery/presentation/theme/font_manager.dart';

class ThemeManager {
  static ThemeData getThemeData() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorManager.btnPrimary,
      ),
      useMaterial3: true,
      // primaryColor: ColorManager.primary,
      scaffoldBackgroundColor:
          Color.fromARGB(255, 230, 230, 230).withOpacity(0.6),

      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.primary,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorManager.btnSecondary,
        selectionHandleColor: ColorManager.btnSecondary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(340.w, 50.h),
          foregroundColor: Colors.green,
          backgroundColor: ColorManager.btnPrimary,
          // backgroundColor: ColorManager.btnPrimary,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: getRegularStyle(
          fontSize: 57.sp,
          color: Colors.black,
        ),
        displayMedium: getRegularStyle(
          fontSize: 45.sp,
          color: Colors.black,
        ),
        displaySmall: getRegularStyle(
          fontSize: 36.sp,
          color: Colors.black,
        ),
        headlineMedium: getRegularStyle(
          fontSize: 28.sp,
          color: Colors.black,
        ),
        headlineLarge: getRegularStyle(
          fontSize: 32.sp,
          color: Colors.black,
        ),
        headlineSmall: getRegularStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        bodyLarge: getRegularStyle(
          fontSize: 16.sp,
          color: Colors.black,
        ),
        bodyMedium: getRegularStyle(
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
