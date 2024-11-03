import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _display = '';

  void _append(String value) {
    setState(() {
      _display += value;
    });
  }

  void _calculate() {
    // Logic for calculating the result can be implemented here
    // For now, we'll just display the input
    setState(() {
      _display = 'Result: $_display';
    });
  }

  void _clear() {
    setState(() {
      _display = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _display,
          style: TextStyle(fontSize: 32),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _append('1'),
              child: Text('1'),
            ),
            ElevatedButton(
              onPressed: () => _append('2'),
              child: Text('2'),
            ),
            ElevatedButton(
              onPressed: () => _append('3'),
              child: Text('3'),
            ),
            ElevatedButton(
              onPressed: () => _append('+'),
              child: Text('+'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _append('4'),
              child: Text('4'),
            ),
            ElevatedButton(
              onPressed: () => _append('5'),
              child: Text('5'),
            ),
            ElevatedButton(
              onPressed: () => _append('6'),
              child: Text('6'),
            ),
            ElevatedButton(
              onPressed: () => _append('-'),
              child: Text('-'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _append('7'),
              child: Text('7'),
            ),
            ElevatedButton(
              onPressed: () => _append('8'),
              child: Text('8'),
            ),
            ElevatedButton(
              onPressed: () => _append('9'),
              child: Text('9'),
            ),
            ElevatedButton(
              onPressed: () => _append('*'),
              child: Text('*'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _clear(),
              child: Text('C'),
            ),
            ElevatedButton(
              onPressed: () => _append('0'),
              child: Text('0'),
            ),
            ElevatedButton(
              onPressed: () => _calculate(),
              child: Text('='),
            ),
            ElevatedButton(
              onPressed: () => _append('/'),
              child: Text('/'),
            ),
          ],
        ),
      ],
    );
  }
}
