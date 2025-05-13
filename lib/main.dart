import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lonasolar/presentasion/pages/app/app_widget.dart';
import 'package:lonasolar/presentasion/shared_features/initialize_cubit/theme_cubit.dart';

import 'initialize_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const String flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  await dotenv.load(fileName: ".env/.$flavor");
  if (kDebugMode) {
    print("Running app with FLAVOR: $flavor");
  }
  await initializeDependencies();
  runApp(
    BlocProvider(
      create: (_) => ThemeCubit(),
      child: const AppWidget(),
    ),
  );
}
