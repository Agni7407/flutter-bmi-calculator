import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmical,
      required this.interpretation,
      required this.result});
  final String bmical;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Your Result',
                style: KYourResultTextStyle,
              ),
            ),
          )),
          Expanded(
            flex: 6,
            child: ReusableCont(
                cardChild: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result,
                        style: KResultTextStyle,
                      ),
                      Text(
                        bmical,
                        style: KBMITextStyle,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        interpretation,
                        style: KDescriptionTextStyle,
                      )
                    ],
                  ),
                ),
                Colour: activeCardColour),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE CALCULATE',
                  style: KLargeTextStyle,
                ),
              ),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
