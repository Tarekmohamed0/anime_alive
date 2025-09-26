import 'dart:ui';

class AppConstants {
  // App Info
  static const String appName = 'Trendora';
  static const String appVersion = '1.0.0';

  // Supabase
  static const String supabaseUrl = 'https://cymsniatztyxgaubxlmh.supabase.co';
  static const String supabaseAnonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5bXNuaWF0enR5eGdhdWJ4bG1oIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg0Mzc5MjcsImV4cCI6MjA2NDAxMzkyN30.-zUtVcfX_lD25lQVGpxxBJY3RcQnBGygcAUSB7k8DW4';

  // Tables
  static const String usersTable = 'users';
  static const String servicesTable = 'services';
  static const String ordersTable = 'orders';
  static const String storesTable = 'stores';
  static const String reviewsTable = 'reviews';

  // Storage Buckets
  static const String profileImagesStorage = 'profile_images';
  static const String serviceImagesStorage = 'service_images';
  static const String storageBaseUrl =
      'https://cymsniatztyxgaubxlmh.supabase.co/storage/v1/object/public';

  // Shared Preferences Keys
  static const String themeKey = 'theme_mode';
  static const String onboardingCompleteKey = 'onboarding_complete';

  // Animation Durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 200);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 500);
  static const Duration longAnimationDuration = Duration(milliseconds: 800);

  // Colors
  static const primaryGradient = [
    Color(0xff3C36CB),
    Color(0xffC175F5),
    Color(0xffFBACB7),
  ];

  static const backgroundGradient = [
    Color(0xFFE8E0FF),
    Color(0xFFF5F3FF),
    Color(0xFFFFFFFF),
  ];

  static const primaryBlue = Color(0xFF4F46E5);

  // Dimensions
  static const double defaultPadding = 32.0;
  static const double buttonHeight = 58.0;
  static const double borderRadius = 16.0;

  // Animation durations
  static const Duration particleAnimationDuration = Duration(seconds: 3);
  static const Duration rayAnimationDuration = Duration(seconds: 2);

  // Assets
  static const String trendingImage = 'assets/images/trending.png';
  static const String googleLogoUrl =
      'https://developers.google.com/identity/images/g-logo.png';
}
