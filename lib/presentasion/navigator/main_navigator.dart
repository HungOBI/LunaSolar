import 'package:flutter/material.dart';
import '../../utils/navigator_support.dart';
import '../pages/home/home_screen.dart';

class MainNavigator extends StatefulWidget {
  static const path = '/main_navigator';

  const MainNavigator({Key? key}) : super(key: key);

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: HomePage.path, // chỉ HomePage
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.path:
            return MaterialPageRoute(builder: (context) => const HomePage());

          default:
            return MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Center(child: Text('Page not found')),
              ),
            );
        }
      },
    );
  }
}
