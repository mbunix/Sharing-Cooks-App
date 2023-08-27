// Flutter imports:
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.quicksand().fontFamily,
      primaryColor: AppColors.themeColors.primaryColor,
      primaryColorDark: AppColors.themeColors.primaryDark,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: AppColors.themeColors.textSelectionColor,
      ),
      textTheme: textTheme, colorScheme: ColorScheme.light(
        primary: AppColors.themeColors.primaryColor,
        secondary: AppColors.themeColors.accentColor,
      ).copyWith(background: AppColors.themeColors.backgroundColor),
    ).copyWith(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.themeColors.primaryColor,
          textStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class  AppColors {
  static ThemeColors themeColors = ThemeColors(
    orangeColor,
    orangeColor,
    greenColor,
    pureWhiteColor,
    lightGreyHighlightColor,
  );
  static const Color greenColor = Color(0xFF99CC33);
  static const Color orangeColor = Color(0xFFF7941D);
  static const Color pureWhiteColor = Color(0xFFFCFCFC);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color lightGreyHighlightColor = Color(0xFFD6D4D4);
  static const Color backgroundColor = Color(0xFFD9D9D9);
  static const Color blackTextColor = Color(0xFF444444);
  static const Color blackColor = Color(0xFF000000);
  // static const Color greyTextColor = Color(0xFF756F6F);
  static const Color greyTextColor = Color(0xFF666666);
  static const Color secondaryTextColor = Color(0xFF1B2B41);
  static const Color inputBackgroundColor = Color(0xFFEEEEEE);
  static const Color hintTextColor = Color(0xFFBBBBBB);
  static const Color redColor = Color(0xFFDC2626);
  static const Color lightBlueColor = Color(0xFF3FAEC6);
  static const Color chatBubbleColor = Color(0xFFDDDDDD);
}

class ThemeColors {
  final Color primaryColor;
  final Color primaryDark;
  final Color accentColor;
  final Color backgroundColor;
  final Color textSelectionColor;

  ThemeColors(
    this.primaryColor,
    this.primaryDark,
    this.accentColor,
    this.backgroundColor,
    this.textSelectionColor,
  );
}

final TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.quicksand(
    fontSize: 97,
    fontWeight: FontWeight.w300,
    // letterSpacing: -1.5,
    color: AppColors.blackTextColor,
  ),
  displayMedium: GoogleFonts.quicksand(
    fontSize: 61,
    fontWeight: FontWeight.w300,
    // letterSpacing: -0.5,
    color: AppColors.blackTextColor,
  ),
  displaySmall: GoogleFonts.quicksand(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: AppColors.blackTextColor,
  ),
  headlineMedium: GoogleFonts.quicksand(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.25,
    color: AppColors.blackTextColor,
  ),
  headlineSmall: GoogleFonts.quicksand(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.blackTextColor,
  ),
  titleLarge: GoogleFonts.quicksand(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    // letterSpacing: 0.15,
    color: AppColors.blackTextColor,
  ),
  titleMedium: GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.15,
    color: AppColors.blackTextColor,
  ),
  titleSmall: GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    // letterSpacing: 0.1,
    color: AppColors.blackTextColor,
  ),
  bodyLarge: GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.5,
    color: AppColors.blackTextColor,
  ),
  bodyMedium: GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.25,
    color: AppColors.blackTextColor,
  ),
  labelLarge: GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    // letterSpacing: 1.25,
    color: AppColors.blackTextColor,
  ),
  bodySmall: GoogleFonts.quicksand(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.4,
    color: AppColors.blackTextColor,
  ),
  labelSmall: GoogleFonts.quicksand(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: AppColors.blackTextColor,
  ),
);
