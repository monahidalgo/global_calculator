import 'package:flutter/material.dart';
import '../widgets/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "";

  void _onButtonPressed(String value) {
    setState(() {
      _output += value; // Update the output string
    });
  }

  void _calculateResult() {
    // Here you would implement your calculation logic
    setState(() {
      _output = "Result"; // Placeholder for the result
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerRight,
            child: Text(
              _output,
              style: const TextStyle(fontSize: 48.0),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(label: '7', onPressed: _onButtonPressed),
                  CalculatorButton(label: '8', onPressed: _onButtonPressed),
                  CalculatorButton(label: '9', onPressed: _onButtonPressed),
                  CalculatorButton(label: '/', onPressed: _onButtonPressed),
                ],
              ),
              // Add more rows for numbers and operations...
            ],
          ),
          ElevatedButton(
            onPressed: _calculateResult,
            child: const Text('Calculate'),
          ),
        ],
      ),
    );
  }
}
