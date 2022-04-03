import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: BallPage()));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          child: BallChange(),
        ),
      ),
    );
  }
}

class BallChange extends StatefulWidget {
  @override
  _BallChangeState createState() => _BallChangeState();
}

class _BallChangeState extends State<BallChange> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                RandomGenerator();
                print("I got Clicked!");
              },
              child: Image.asset('images/ball$randomNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  RandomGenerator() {
    setState(() {
      randomNumber = Random().nextInt(4) + 1;
    });
  }
}
