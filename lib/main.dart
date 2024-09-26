import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GlobalCalculatorApp());
}

class GlobalCalculatorApp extends StatelessWidget {
  const GlobalCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      home: const HomeScreen(),
    );
  }
}

class GoogleFonts {
  static robotoTextTheme(TextTheme textTheme) {}
}
