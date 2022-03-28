import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Enabled'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   primary: Colors.blue,
                    // ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Enabled'),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.volume_up)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
