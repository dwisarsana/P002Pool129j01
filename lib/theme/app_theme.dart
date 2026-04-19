import 'package:flutter/material.dart';

class AppTheme {
  // Primary Colors
  static const Color oceanBlue = Color(0xFF0077B6);
  static const Color waterBlue = Color(0xFF00B4D8);
  static const Color aquaBlue = Color(0xFF90E0EF);
  static const Color deepSoil = Color(0xFF212121);
  static const Color poolTileWhite = Color(0xFFF8F9FA);
  static const Color mistWhite = Color(0xFFFAFAFA);
  static const Color sunshineYellow = Color(0xFFFFD166);
  static const Color skyBlue = Color(0xFF64B5F6);
  static const Color roseGold = Color(0xFFE8B4B8);
  static const Color lavender = Color(0xFFB39DDB);
  static const Color coral = Color(0xFFFF8A65);
  static const Color slate = Color(0xFF37474F);
  static const Color charcoal = Color(0xFF1A1A1A);
  static const Color cream = Color(0xFFFFF8E1);

  // Gradients for existing widgets compatibility
  static const LinearGradient waterGradient = LinearGradient(
    colors: [waterBlue, oceanBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient sunGradient = LinearGradient(
    colors: [Color(0xAAFFB74D), Color(0x00FFB74D)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static ThemeData get theme => ThemeData(
        fontFamily: 'SF Pro Display',
        scaffoldBackgroundColor: poolTileWhite,
        colorScheme: ColorScheme.fromSeed(
          seedColor: oceanBlue,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w800,
            color: charcoal,
            letterSpacing: -1.0,
            height: 1.2,
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: charcoal,
            letterSpacing: -0.5,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: charcoal,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: charcoal,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: charcoal,
            height: 1.5,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: slate,
            height: 1.4,
          ),
          labelSmall: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: slate,
            letterSpacing: 0.5,
          ),
        ),
      );

  // Compatibility alias for lightTheme
  static ThemeData get lightTheme => theme;
}
