import 'package:flutter/material.dart';
import 'package:mausam/components/calculate_button.dart';
import 'package:mausam/components/my_card.dart';
import 'package:mausam/const/const.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    this.interpretation,
    this.bmiResult,
    this.resultText,
    this.range,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String range;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Text(
              'Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              colorCard: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  SizedBox(height: 30),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  SizedBox(height: 30),
                  Text(
                    range,
                    style: kBodyTextStyle,
                  ),
                  SizedBox(height: 30),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          CalculateButton(
            label: 'RE-CALCULATE YOUR BMI',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
