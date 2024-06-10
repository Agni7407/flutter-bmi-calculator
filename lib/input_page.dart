import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female, NULL }

class InputPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.NULL;
  int height = 180;

  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;

  // void updateColour(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColour == inactiveCardColour) {
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     } else {
  //       maleCardColour = inactiveCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColour == inactiveCardColour) {
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     } else {
  //       femaleCardColour = inactiveCardColour;
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromARGB(221, 8, 8, 8),
        appBar: AppBar(
          backgroundColor: boxColour,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCont(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  Colour: selectedGender == Gender.male
                      ? activeCardColour
                      : inactiveCardColour,
                  cardChild:
                      iconContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCont(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  Colour: selectedGender == Gender.female
                      ? activeCardColour
                      : inactiveCardColour,
                  cardChild: iconContent(
                      icon: FontAwesomeIcons.venus, lable: 'FEMALE'),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCont(
              Colour: boxColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: lableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: lableTextStyle,
                      )
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCont(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  Colour: boxColour,
                  cardChild: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'MALE',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCont(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    Colour: boxColour,
                    cardChild: iconContent(
                        icon: FontAwesomeIcons.venus, lable: 'FEMALE')),
              ),
            ]),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]));
  }
}
