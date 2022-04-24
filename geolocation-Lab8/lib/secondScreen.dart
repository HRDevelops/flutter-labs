import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    // TODO: implement initState
    //LoadM();
    print("Screen loading");
    obj = Text("Second Screen is loaded");
    super.initState();
  }

  dynamic obj;

  dynamic dispos;
  @override
  void dispose() {
    // TODO: implement dispose
    print("Screen Disposed");
    dispos = Text("Screen is Disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: obj,
          ),
          RaisedButton.icon(
            onPressed: () {
              dispose();
              Navigator.pop(context);
            },
            color: Color.fromARGB(255, 122, 133, 194),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: Text(
              'Towards Home screen',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
