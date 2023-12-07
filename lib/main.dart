import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0D22),
          // foregroundColor: Color(0xFFE5E5E7),
          shadowColor: Color(0xFF070918),

          elevation: 10,
        ),
        scaffoldBackgroundColor: const Color(0xFF1D1E33),
        sliderTheme: const SliderThemeData(
            trackHeight: 2,
            inactiveTrackColor: Color(0xFF8D8E98),
            overlayColor: Color(0xFF31142F),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 20)),
      ),
      home: const MyHomePage(title: 'BMI CALCULATOR'),
    );
  }
}
