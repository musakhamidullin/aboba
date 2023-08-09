import 'package:aboba/application/routes.dart';
import 'package:flutter/material.dart';

import 'presentation/themes/theme.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeApp.get(),
      routerConfig: AppRouter().config(),
      builder: (context, child) {
        return child!;
      },
    );
  }
}
