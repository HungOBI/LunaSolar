import 'package:flutter/material.dart';

extension ThemeColors on BuildContext {
  _ThemeColors get colors => _ThemeColors(
    primary: _colorScheme.primary,
    secondary: _colorScheme.secondary,
    tertiary: _colorScheme.tertiary,
    background: _colorScheme.background,
    surface: _colorScheme.surface,
    error: _colorScheme.error,
    onPrimary: _colorScheme.onPrimary,
    onSecondary: _colorScheme.onSecondary,
    onTertiary: _colorScheme.onTertiary,
    onBackground: _colorScheme.onBackground,
    onSurface: _colorScheme.onSurface,
    onError: _colorScheme.onError,
    outline: _colorScheme.outline,
    shadow: _colorScheme.shadow,
  );

  ThemeData get _theme => Theme.of(this);
  ColorScheme get _colorScheme => _theme.colorScheme;
}

class _ThemeColors {
  const _ThemeColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.background,
    required this.surface,
    required this.error,
    required this.onPrimary,
    required this.onSecondary,
    required this.onTertiary,
    required this.onBackground,
    required this.onSurface,
    required this.onError,
    required this.outline,
    required this.shadow,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color background;
  final Color surface;
  final Color error;
  final Color onPrimary;
  final Color onSecondary;
  final Color onTertiary;
  final Color onBackground;
  final Color onSurface;
  final Color onError;
  final Color outline;
  final Color shadow;
}
