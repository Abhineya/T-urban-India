import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:t_urban_india/core/theme/app_theme.dart';
import 'package:t_urban_india/features/onboarding/presentation/screens/onboarding_screen.dart';

void main() {
  // debugPaintSizeEnabled = true;

  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      theme: appTheme,
      title: 'T-urban India',
    );
  }
}
