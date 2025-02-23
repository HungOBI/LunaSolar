import 'package:flutter/material.dart';

class DefaultColorScheme {
  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF767A00), // Xanh lá đậm, tông modern
    onPrimary: Color(0xFFFFFFFF), // Màu chữ trên primary
    primaryContainer: Color(0xFFB9F6CA), // Màu sáng hơn của primary
    onPrimaryContainer: Color(0xFF003D1E), // Màu chữ trên primary container

    secondary: Color(0xFFFF9800), // Cam sáng
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFC107), // Vàng
    onSecondaryContainer: Color(0xFF3E2723),

    tertiary: Color(0xFF00ACC1), // Xanh dương
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFB2EBF2),
    onTertiaryContainer: Color(0xFF004D40),

    error: Color(0xFFD32F2F), // Đỏ
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFCDD2),
    onErrorContainer: Color(0xFFB71C1C),

    background: Color(0xFFF5F5F5),
    onBackground: Color(0xFF212121),

    surface: Color(0xFFFFFFFF), // Trắng, nền chính
    onSurface: Color(0xFF212121), // Màu chữ chính
    surfaceVariant: Color(0xFFEEEEEE), // Xám nhạt hơn nền
    onSurfaceVariant: Color(0xFF757575),

    outline: Color(0xFF9E9E9E),
    outlineVariant: Color(0xFFBDBDBD),

    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),

    inverseSurface: Color(0xFF303030),
    inversePrimary: Color(0xFF005A26), // Primary đảo ngược
  );

  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF00E676),
    onPrimary: Color(0xFF003D1E),
    primaryContainer: Color(0xFF005A26),
    onPrimaryContainer: Color(0xFFB9F6CA),

    secondary: Color(0xFFFFB74D),
    onSecondary: Color(0xFF3E2723),
    secondaryContainer: Color(0xFFFFA726),
    onSecondaryContainer: Color(0xFFFFE0B2),

    tertiary: Color(0xFF29B6F6),
    onTertiary: Color(0xFF004D40),
    tertiaryContainer: Color(0xFF0277BD),
    onTertiaryContainer: Color(0xFFB3E5FC),

    error: Color(0xFFFF5252), // Đỏ neon
    onError: Color(0xFFB71C1C),
    errorContainer: Color(0xFFD32F2F),
    onErrorContainer: Color(0xFFFFEBEE),

    background: Color(0xFF121212),
    onBackground: Color(0xFFE0E0E0),

    surface: Color(0xFF1E1E1E),
    onSurface: Color(0xFFE0E0E0),
    surfaceVariant: Color(0xFF424242),
    onSurfaceVariant: Color(0xFFBDBDBD),

    outline: Color(0xFF757575),
    outlineVariant: Color(0xFFBDBDBD),

    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),

    inverseSurface: Color(0xFFECEFF1),
    inversePrimary: Color(0xFF69F0AE),
  );
}
