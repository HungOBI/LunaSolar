import 'package:flutter/material.dart';
import 'app_text_style.dart';
import 'app_theme_extension.dart';
import 'color_schemes.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: DefaultColorScheme.light.background,
    textTheme: AppTextTheme.fromColorScheme(DefaultColorScheme.light).textTheme,
    colorScheme: DefaultColorScheme.light,
    useMaterial3: true,

    /// 🌟 **App Bar Theme**
    appBarTheme: AppBarTheme(
      backgroundColor: DefaultColorScheme.light.primary,
      foregroundColor: DefaultColorScheme.light.onPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: DefaultColorScheme.light.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    /// 🌟 **Input Field Theme**
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: DefaultColorScheme.light.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: DefaultColorScheme.light.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: DefaultColorScheme.light.primary, width: 2),
      ),
    ),

    /// 🌟 **Elevated Button Theme**
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DefaultColorScheme.light.primary,
        foregroundColor: DefaultColorScheme.light.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    /// 🌟 **Text Button Theme**
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: DefaultColorScheme.light.primary,
      ),
    ),

    /// 🌟 **Checkbox Theme**
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(DefaultColorScheme.light.onPrimary),
      fillColor: WidgetStateProperty.all(DefaultColorScheme.light.primary),
    ),

    /// 🌟 **Chip Theme**
    chipTheme: ChipThemeData(
      backgroundColor: DefaultColorScheme.light.surfaceVariant,
      labelStyle: TextStyle(color: DefaultColorScheme.light.onSurface),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    /// 🌟 **Dialog Theme**
    dialogTheme: DialogTheme(
      backgroundColor: DefaultColorScheme.light.surface,
      titleTextStyle: TextStyle(
        color: DefaultColorScheme.light.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: TextStyle(
        color: DefaultColorScheme.light.onSurfaceVariant,
        fontSize: 16,
      ),
    ),

    /// 🌟 **Bottom Navigation Bar Theme**
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: DefaultColorScheme.light.surface,
      selectedItemColor: DefaultColorScheme.light.primary,
      unselectedItemColor: DefaultColorScheme.light.onSurfaceVariant,
    ),

    /// 🌟 **TabBar Theme**
    tabBarTheme: TabBarTheme(
      labelColor: DefaultColorScheme.light.primary,
      unselectedLabelColor: DefaultColorScheme.light.onSurfaceVariant,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: DefaultColorScheme.light.primary, width: 2)),
      ),
    ),

    /// 🌟 **Progress Indicator Theme**
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: DefaultColorScheme.light.primary,
    ),

    /// 🌟 **Snackbar Theme**
    snackBarTheme: SnackBarThemeData(
      backgroundColor: DefaultColorScheme.light.surface,
      contentTextStyle: TextStyle(color: DefaultColorScheme.light.onSurface),
    ),
    extensions: [
      AppThemeExtension(
        primary: DefaultColorScheme.light.primary,
        surfaceTint: DefaultColorScheme.light.surfaceTint,
        onPrimary: DefaultColorScheme.light.onPrimary,
        primaryContainer: DefaultColorScheme.light.primaryContainer,
        onPrimaryContainer: DefaultColorScheme.light.onPrimaryContainer,
        secondary: DefaultColorScheme.light.secondary,
        onSecondary: DefaultColorScheme.light.onSecondary,
        secondaryContainer: DefaultColorScheme.light.secondaryContainer,
        onSecondaryContainer: DefaultColorScheme.light.onSecondaryContainer,
        tertiary: DefaultColorScheme.light.tertiary,
        onTertiary: DefaultColorScheme.light.onTertiary,
        tertiaryContainer: DefaultColorScheme.light.tertiaryContainer,
        onTertiaryContainer: DefaultColorScheme.light.onTertiaryContainer,
        error: DefaultColorScheme.light.error,
        onError: DefaultColorScheme.light.onError,
        errorContainer: DefaultColorScheme.light.errorContainer,
        onErrorContainer: DefaultColorScheme.light.onErrorContainer,
        background: DefaultColorScheme.light.background,
        onBackground: DefaultColorScheme.light.onBackground,
        surface: DefaultColorScheme.light.surface,
        onSurface: DefaultColorScheme.light.onSurface,
        surfaceVariant: DefaultColorScheme.light.surfaceVariant,
        onSurfaceVariant: DefaultColorScheme.light.onSurfaceVariant,
        outline: DefaultColorScheme.light.outline,
        outlineVariant: DefaultColorScheme.light.outlineVariant,
        shadow: DefaultColorScheme.light.shadow,
        scrim: DefaultColorScheme.light.scrim,
        inverseSurface: DefaultColorScheme.light.inverseSurface,
      ),
    ],
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: DefaultColorScheme.dark,
    scaffoldBackgroundColor: DefaultColorScheme.dark.background,
    textTheme: AppTextTheme.fromColorScheme(DefaultColorScheme.dark).textTheme,
    useMaterial3: true,

    /// 🌙 **App Bar Theme**
    appBarTheme: AppBarTheme(
      backgroundColor: DefaultColorScheme.dark.primary,
      foregroundColor: DefaultColorScheme.dark.onPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: DefaultColorScheme.dark.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    /// 🌙 **Input Field Theme**
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: DefaultColorScheme.dark.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: DefaultColorScheme.dark.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: DefaultColorScheme.dark.primary, width: 2),
      ),
    ),

    /// 🌙 **Elevated Button Theme**
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DefaultColorScheme.dark.primary,
        foregroundColor: DefaultColorScheme.dark.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    /// 🌙 **Text Button Theme**
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: DefaultColorScheme.dark.primary,
      ),
    ),

    /// 🌙 **Checkbox Theme**
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(DefaultColorScheme.dark.onPrimary),
      fillColor: MaterialStateProperty.all(DefaultColorScheme.dark.primary),
    ),

    /// 🌙 **Chip Theme**
    chipTheme: ChipThemeData(
      backgroundColor: DefaultColorScheme.dark.surfaceVariant,
      labelStyle: TextStyle(color: DefaultColorScheme.dark.onSurface),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    /// 🌙 **Dialog Theme**
    dialogTheme: DialogTheme(
      backgroundColor: DefaultColorScheme.dark.surface,
      titleTextStyle: TextStyle(
        color: DefaultColorScheme.dark.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: TextStyle(
        color: DefaultColorScheme.dark.onSurfaceVariant,
        fontSize: 16,
      ),
    ),

    /// 🌙 **Bottom Navigation Bar Theme**
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: DefaultColorScheme.dark.surface,
      selectedItemColor: DefaultColorScheme.dark.primary,
      unselectedItemColor: DefaultColorScheme.dark.onSurfaceVariant,
    ),

    /// 🌙 **TabBar Theme**
    tabBarTheme: TabBarTheme(
      labelColor: DefaultColorScheme.dark.primary,
      unselectedLabelColor: DefaultColorScheme.dark.onSurfaceVariant,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: DefaultColorScheme.dark.primary, width: 2)),
      ),
    ),

    /// 🌙 **Progress Indicator Theme**
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: DefaultColorScheme.dark.primary,
    ),

    /// 🌙 **Snackbar Theme**
    snackBarTheme: SnackBarThemeData(
      backgroundColor: DefaultColorScheme.dark.surface,
      contentTextStyle: TextStyle(color: DefaultColorScheme.dark.onSurface),
    ),

    extensions: [
      AppThemeExtension(
        primary: DefaultColorScheme.dark.primary,
        surfaceTint: DefaultColorScheme.dark.surfaceTint,
        onPrimary: DefaultColorScheme.dark.onPrimary,
        primaryContainer: DefaultColorScheme.dark.primaryContainer,
        onPrimaryContainer: DefaultColorScheme.dark.onPrimaryContainer,
        secondary: DefaultColorScheme.dark.secondary,
        onSecondary: DefaultColorScheme.dark.onSecondary,
        secondaryContainer: DefaultColorScheme.dark.secondaryContainer,
        onSecondaryContainer: DefaultColorScheme.dark.onSecondaryContainer,
        tertiary: DefaultColorScheme.dark.tertiary,
        onTertiary: DefaultColorScheme.dark.onTertiary,
        tertiaryContainer: DefaultColorScheme.dark.tertiaryContainer,
        onTertiaryContainer: DefaultColorScheme.dark.onTertiaryContainer,
        error: DefaultColorScheme.dark.error,
        onError: DefaultColorScheme.dark.onError,
        errorContainer: DefaultColorScheme.dark.errorContainer,
        onErrorContainer: DefaultColorScheme.dark.onErrorContainer,
        background: DefaultColorScheme.dark.background,
        onBackground: DefaultColorScheme.dark.onBackground,
        surface: DefaultColorScheme.dark.surface,
        onSurface: DefaultColorScheme.dark.onSurface,
        surfaceVariant: DefaultColorScheme.dark.surfaceVariant,
        onSurfaceVariant: DefaultColorScheme.dark.onSurfaceVariant,
        outline: DefaultColorScheme.dark.outline,
        outlineVariant: DefaultColorScheme.dark.outlineVariant,
        shadow: DefaultColorScheme.dark.shadow,
        scrim: DefaultColorScheme.dark.scrim,
        inverseSurface: DefaultColorScheme.dark.inverseSurface,
      ),
    ],
  );
}
