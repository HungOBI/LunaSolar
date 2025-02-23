import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lonasolar/presentasion/pages/app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const String flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  await dotenv.load(fileName: ".env/.$flavor");
  if (kDebugMode) {
    print("Running app with FLAVOR: $flavor");
  }
  runApp(const AppWidget());
}
