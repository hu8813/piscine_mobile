import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.dark(), // Change to a dark theme
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none, // Remove border
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white), // Text color
                      controller: TextEditingController(text: '0'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none, // Remove border
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white), // Text color
                      controller: TextEditingController(text: '0'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildButton(context, '7'),
                      _buildButton(context, '8'),
                      _buildButton(context, '9'),
                      _buildButton(context, '*'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildButton(context, '4'),
                      _buildButton(context, '5'),
                      _buildButton(context, '6'),
                      _buildButton(context, '/'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildButton(context, '1'),
                      _buildButton(context, '2'),
                      _buildButton(context, '3'),
                      _buildButton(context, '.'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildButton(context, '0'),
                      _buildButton(context, '='),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text) {
  return ElevatedButton(
    onPressed: () {
      print('Button pressed: $text');
    },
    child: Text(text),
    style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor, // Use background color
      minimumSize: const Size(80, 80), // Set minimum size for buttons
      padding: const EdgeInsets.all(24), // Add padding for better spacing
    ),
  );
}
}
