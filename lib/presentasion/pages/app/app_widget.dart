import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lonasolar/presentasion/pages/home/home_screen.dart';
import 'package:lonasolar/presentasion/shared_features/initialize_cubit/theme_cubit.dart';

import '../../../generated/l10n.dart';
import '../../../theme/app_theme.dart';
import '../../navigator/main_navigator.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class AppWidget extends StatefulWidget {
  static const path = 'AppWidget';

  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(builder: (context, themeMode) {
      return MaterialApp(
        key: navigatorKey,
        locale: Locale('vi'),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        initialRoute: MainNavigator.path,
        routes: {
          MainNavigator.path: (context) => const MainNavigator(),
        },
        themeMode: themeMode,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: child,
          );
        },
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      );
    });
  }
}
