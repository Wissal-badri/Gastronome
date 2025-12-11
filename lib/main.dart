import 'package:flutter/material.dart';
import 'package:gastronome/theme/app_theme.dart';
import 'package:gastronome/screens/home_screen.dart';

void main() {
  runApp(const GastronomeApp());
}

class GastronomeApp extends StatelessWidget {
  const GastronomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gastronôme',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.luxuryTheme,
      home: const HomeScreen(),
    );
  }
}
