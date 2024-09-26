import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import 'calculator_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Calculator'),
      ),
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/calc.jpeg'), // Ensure you have a background image in this path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Logo/Image
                Image.asset(
                  'assets/images/calc.jpeg', // Ensure you have a logo image in this path
                  width: 100, // Adjust width as needed
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CalculatorScreen()),
                    );
                  },
                  child: const Text('Open Calculator'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
