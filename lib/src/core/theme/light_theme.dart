import 'package:flutter/material.dart';

class LightTheme {
  // Colors
  static const Color primary = Color(0xFF5077F3);
  static const Color secondary = Color(0xFF6C6C6C);
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF5F5F5);
  static const Color error = Color(0xFFFF5252);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF000000);
  static const Color onSurface = Color(0xFF000000);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color card = Color(0xFFFFFFFF);
  static const Color cardBorder = Color(0xFFE0E0E0);
  static const Color accent = Color(0xFF83B3F3);
  static const Color divider = Color(0xFFE0E0E0);
  static const Color shadow = Color(0x22000000);
  static const Color placeholder = Color(0xFF9E9E9E);
  static const Color inputBackground = Color(0xFFF5F5F5);
  static const Color inputBorder = Color(0xFFE0E0E0);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF2196F3);
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color disabledText = Color(0xFF757575);
  static const Color navbarBackground = Color(0x206C6C6C);
  static const Color navbarBorder = Color(0x4DFFFFFF);
  static const Color navbarItem = Color(0xFFFFFFFF);
  static const Color navbarItemActive = Color(0xFF5077F3);

  // Gradients
  static const List<Color> primaryGradient = [
    Color(0xFF5077F3),
    Color(0xFF83B3F3),
  ];
  static const List<Color> backgroundGradient = [
    Color(0xFFFFFFFF),
    Color(0xFFF5F5F5),
  ];

  // Typography
  static const String primaryFontFamily = 'Poppins';
  static const String secondaryFontFamily = 'Roboto';

  // Text Styles
  static const TextStyle displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    height: 64 / 57,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 52 / 45,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 44 / 36,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 40 / 32,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 36 / 28,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 32 / 24,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 28 / 22,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 24 / 16,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 20 / 14,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 24 / 16,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 20 / 14,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 16 / 12,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 20 / 14,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 16 / 12,
    fontFamily: primaryFontFamily,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 16 / 11,
    fontFamily: primaryFontFamily,
  );

  // Spacing
  static const double spaceNone = 0;
  static const double spaceXs = 4;
  static const double spaceSm = 8;
  static const double spaceMd = 16;
  static const double spaceLg = 24;
  static const double spaceXl = 32;
  static const double spaceXxl = 48;
  static const double spaceXxxl = 64;

  // Border Radius
  static const double radiusNone = 0;
  static const double radiusXs = 4;
  static const double radiusSm = 8;
  static const double radiusMd = 12;
  static const double radiusLg = 16;
  static const double radiusXl = 24;
  static const double radiusXxl = 32;
  static const double radiusFull = 9999;

  // Animation Durations
  static const Duration animationFast = Duration(milliseconds: 200);
  static const Duration animationMedium = Duration(milliseconds: 400);
  static const Duration animationSlow = Duration(milliseconds: 700);

  // Navbar Configuration
  static const double navbarHeight = 84;
  static const double navbarItemSize = 74;
  static const double navbarIconSize = 24;
  static const double navbarCornerRadius = 25;
  static const double navbarItemCornerRadius = 37;
  static const double navbarHorizontalPadding = 6;
  static const double navbarVerticalPadding = 5;
  static const double navbarBottomPosition = 20;
  static const double navbarHorizontalMargin = 20;
  static const double navbarBlurSigmaX = 20;
  static const double navbarBlurSigmaY = 10;

  // Theme Data
  static ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: primary,
        secondary: secondary,
        surface: surface,
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onSurface: onSurface,
        onError: onError,
      ),
      cardColor: card,
      dividerColor: divider,
      disabledColor: disabled,
      scaffoldBackgroundColor: background,
      textTheme: const TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      ),
      fontFamily: primaryFontFamily,
    );
  }
}
