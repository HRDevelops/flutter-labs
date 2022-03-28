import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(            
            child: TextButton(
              onPressed: () {
                randomGenerator();
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  randomGenerator() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }
}
