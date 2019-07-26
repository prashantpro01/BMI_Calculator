import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
          'Your Result',
          textAlign: TextAlign.center,
          style: kTitleTextStyle,
        ),
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(bmiResult,
                      style: kBMITextStyle,),
                      Text(interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyStyle,),
                    ],
                  ),
                )),
            BottomButton(buttonTitle: 'RE-CALCUlATE', onTap:(){
              Navigator.pop(context);
    })
          ],
        ));
  }
}
