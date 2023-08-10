import 'package:aboba/presentation/themes/theme.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/recover.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeApp.get(),
      home: const RecoverPage(),
    );
  }
}
