import 'package:flutter/material.dart';

import 'core/code_injection/injection.dart';
import 'core/navigation/app_bottom_nav_bar.dart';
import 'core/presentation/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const AppBottomNavBar(),
    );
  }
}
