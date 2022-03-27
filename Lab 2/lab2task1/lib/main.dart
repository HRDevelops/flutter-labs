import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Mobile App Dev Lab"),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Text(
            "You have not pressed the button!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: "This Button is not functional",
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}
