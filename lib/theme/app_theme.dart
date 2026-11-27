import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppTheme {
  static ThemeData get dark {
    final base = ThemeData(brightness: Brightness.dark, useMaterial3: true);
    return base.copyWith(
      //Main application background
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.background),
      navigationBarTheme: const NavigationBarThemeData(backgroundColor: AppColors.surface),
      dividerColor: AppColors.border,

      //Global color system
      colorScheme: base.colorScheme.copyWith(
        brightness: Brightness.dark,

        //Main brand
        primary: AppColors.primary,
        onPrimary: AppColors.pureWhite,
        primaryContainer: AppColors.electricViolet,
        onPrimaryContainer: AppColors.pureWhite,

        //Novel section
        secondary: AppColors.novels,
        onSecondary: AppColors.black,

        //Comics & Manga section
        tertiary: AppColors.comics,
        onTertiary: AppColors.pureWhite,

        //Surfaces
        surface: AppColors.surface,
        onSurface: AppColors.primaryText,
        surfaceTint: AppColors.primary,

        //Secondary Texts & Borders
        onSurfaceVariant: AppColors.secondaryText,
        outline: AppColors.border,
        outlineVariant: AppColors.elevatedSurface,

        //Status
        error: AppColors.error,
        onError: AppColors.pureWhite,
      ),
    );
  }
}
