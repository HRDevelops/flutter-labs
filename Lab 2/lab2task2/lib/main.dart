import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am Rick"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image(image: AssetImage('images/rick.png'))]),
          ),
        ),
        backgroundColor: Colors.greenAccent,
        /*body: Column(
          children: <Widget>[
            Text("Rick"),
            Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fuproxx.com%2Ftv%2Frick-grimes-walking-dead-movie-details%2F&psig=AOvVaw2CsjR9aiF6hsrCVtCo0qwX&ust=1648452516649000&source=images&cd=vfe&ved=2ahUKEwiO8N6m4uX2AhWLX_EDHXIkCBgQjRx6BAgAEAk'),
          ],
        ),*/
      ),
    ),
  );
}
