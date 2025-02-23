import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextTheme textTheme;

  const AppTextTheme({required this.textTheme});

  factory AppTextTheme.fromColorScheme(ColorScheme colorScheme) {
    return AppTextTheme(
      textTheme: TextTheme(
        displayLarge: _style(57, FontWeight.w400, colorScheme.onSurface),
        displayMedium: _style(45, FontWeight.w400, colorScheme.onSurface),
        displaySmall: _style(36, FontWeight.w400, colorScheme.onSurface),
        headlineLarge: _style(32, FontWeight.w400, colorScheme.onSurface),
        headlineMedium: _style(28, FontWeight.w400, colorScheme.onSurface),
        headlineSmall: _style(24, FontWeight.w400, colorScheme.onSurface),
        titleLarge: _style(22, FontWeight.w400, colorScheme.onSurface),
        titleMedium: _style(16, FontWeight.w500, colorScheme.onSurface),
        titleSmall: _style(14, FontWeight.w500, colorScheme.onSurface),
        bodyLarge: _style(16, FontWeight.w400, colorScheme.onSurface),
        bodyMedium: _style(14, FontWeight.w400, colorScheme.onSurface),
        bodySmall: _style(12, FontWeight.w400, colorScheme.onSurface),
        labelLarge: _style(14, FontWeight.w500, colorScheme.onSurfaceVariant),
        labelMedium: _style(12, FontWeight.w500, colorScheme.onSurfaceVariant),
        labelSmall: _style(11, FontWeight.w500, colorScheme.onSurfaceVariant),
      ),
    );
  }

  @override
  AppTextTheme copyWith({TextTheme? textTheme}) {
    return AppTextTheme(
      textTheme: textTheme ?? this.textTheme,
    );
  }

  @override
  AppTextTheme lerp(covariant ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(
      textTheme: TextTheme(
        displayLarge: TextStyle.lerp(textTheme.displayLarge, other.textTheme.displayLarge, t),
        displayMedium: TextStyle.lerp(textTheme.displayMedium, other.textTheme.displayMedium, t),
        displaySmall: TextStyle.lerp(textTheme.displaySmall, other.textTheme.displaySmall, t),
        headlineLarge: TextStyle.lerp(textTheme.headlineLarge, other.textTheme.headlineLarge, t),
        headlineMedium: TextStyle.lerp(textTheme.headlineMedium, other.textTheme.headlineMedium, t),
        headlineSmall: TextStyle.lerp(textTheme.headlineSmall, other.textTheme.headlineSmall, t),
        titleLarge: TextStyle.lerp(textTheme.titleLarge, other.textTheme.titleLarge, t),
        titleMedium: TextStyle.lerp(textTheme.titleMedium, other.textTheme.titleMedium, t),
        titleSmall: TextStyle.lerp(textTheme.titleSmall, other.textTheme.titleSmall, t),
        bodyLarge: TextStyle.lerp(textTheme.bodyLarge, other.textTheme.bodyLarge, t),
        bodyMedium: TextStyle.lerp(textTheme.bodyMedium, other.textTheme.bodyMedium, t),
        bodySmall: TextStyle.lerp(textTheme.bodySmall, other.textTheme.bodySmall, t),
        labelLarge: TextStyle.lerp(textTheme.labelLarge, other.textTheme.labelLarge, t),
        labelMedium: TextStyle.lerp(textTheme.labelMedium, other.textTheme.labelMedium, t),
        labelSmall: TextStyle.lerp(textTheme.labelSmall, other.textTheme.labelSmall, t),
      ),
    );
  }

  static TextStyle _style(double size, FontWeight weight, Color color) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      height: 1.2,
      color: color,
      fontFamily: 'Arial',
      letterSpacing: 0.3,
    );
  }
}
extension AppTextStyle on BuildContext {
  ThemeData get _theme => Theme.of(this);

  TextTheme get textStyle => _theme.textTheme;
}