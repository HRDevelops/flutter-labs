import 'package:flutter/material.dart';
import 'package:lab6tasks/QuestionBank.dart';

void main() {
  runApp(const MyApp());
}

// stateless widget holds stateful widget QuizHome

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: QuizHome(),
        ),
      ),
    );
  }
}

// QuizHome Dynamic

class QuizHome extends StatefulWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

//State for quiz

class _QuizHomeState extends State<QuizHome> {
  //Quiz Bank obj
  QuizBank obj = QuizBank();
//list for icons
  List<Widget> scorkeeper = [];
//answer compares + icons
  void CompareAnswer(bool answer) {
    bool corretAnswer = obj.CorrectAnswer();
    if (obj.IsFinished() == true) {
      obj.Reset();
      scorkeeper = [];
    } else {
      if (corretAnswer == answer) {
        scorkeeper.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        scorkeeper.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      // state for next question
      setState(() {
        obj.NextQuestion();
      });
    }
  }

  /// UI
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Question display
          Expanded(
            child: Center(
              child: Text(
                obj.GetQuestion(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          //Tru button
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                height: 50,
                minWidth: 270,
                //on press compare answer
                onPressed: () {
                  CompareAnswer(true);
                },
                color: Colors.green,
                child: Text(
                  "True",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //False Button
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: FlatButton(
                height: 50,
                minWidth: 270,
                //on press compare answer
                onPressed: () {
                  CompareAnswer(false);
                },
                color: Colors.red,
                child: Text(
                  "False",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //widget list show in row
          Row(
            children: scorkeeper,
          ),
        ],
      ),
    );
  }
}
