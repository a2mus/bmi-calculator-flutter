import 'package:flutter/material.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'my_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heightValue = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('حاسبة مؤشر كتلة الجسم'),
      ),
      body: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      tapFunction: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      childCard: IconContent(
                        icon: kFemaleIcon,
                        textIcon: kTextFemale,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      tapFunction: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      childCard: IconContent(
                        icon: kMaleIcon,
                        textIcon: kTextMale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCard(
                colour: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      kHeightLabel,
                      textAlign: TextAlign.center,
                      style: kTextIconStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //for the unit of mmesurement
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textDirection: TextDirection.rtl,

                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          heightValue.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'سم',
                          style: kTextUnitStyle,
                        )
                      ],
                    ),
                    Slider(
                      min: 100.0,
                      max: 250.0,
                      value: heightValue.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          heightValue = newValue.round();
                        });
                      },
                      activeColor: Colors.red,
                      inactiveColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              color: kBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
