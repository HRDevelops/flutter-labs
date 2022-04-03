import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(children: [
            //////////////////// 1st button
            AudioButton(1, Colors.yellow),

            //////////////////// 2nd button

            AudioButton(2, Colors.black),

            //////////////////// 3rd button

            AudioButton(3, Colors.purple),

            //////////////////// 4th button

            AudioButton(4, Colors.lightBlue),

            //////////////////// 5th button

            AudioButton(5, Colors.orange),

            //////////////////// 6th button

            AudioButton(6, Colors.red),

            //////////////////// 7th button

            AudioButton(7, Colors.green),
          ]),
        ),
      ),
    );
  }

  Expanded AudioButton(int num, Color colorName) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 100,
        height: double.infinity,
        child: FlatButton(
            color: colorName,
            onPressed: () {
              final player = AudioCache();
              player.play('note$num.wav');
            },
            child: (Text(''))),
      ),
    );
  }
}
