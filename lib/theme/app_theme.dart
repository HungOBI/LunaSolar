import 'package:flutter/material.dart';
import 'app_theme_extension.dart';
import 'color_schemes.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: DefaultColorScheme.light,
    useMaterial3: true,
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
    useMaterial3: true,
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
