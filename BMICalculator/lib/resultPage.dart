import 'bottomButton.dart';
import 'calculatorBrain.dart';
import 'cardChild.dart';
import 'constants.dart';
import 'homePage.dart';
import 'reuseablecard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({ Key? key }) : super(key: key);
  ResultPage(this.resultText, this.interpretation, this.bmiResult);
  String resultText;
  String interpretation;
  String bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Your Result",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Expanded(
              child: ReusableCard(
            colour: kActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  resultText.toUpperCase(),
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                Text(
                  bmiResult,
                  style: TextStyle(fontSize: 36),
                ),
                Text(interpretation, style: TextStyle(fontSize: 16)),
              ],
            ),
          )),
          GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: BottomButton(
              text: 'RE-CALCULATE YOUR BMI',
            ),
          )
        ],
      ),
    );
  }
}
