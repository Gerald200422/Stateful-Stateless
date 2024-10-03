import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const Counter({
    super.key,
    required this.counter,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: onIncrement,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $counter'),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Counter(
          counter: _counter,
          onIncrement: _increment,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: MyHomePage(),
    ),
  );
}
