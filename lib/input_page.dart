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
  int heightValue = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('حاسبة مؤشر كتلة الجسم'),
      ),
      body: Container(
        child: Column(
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      kHeightLabel,
                      textAlign: TextAlign.center,
                      style: kTextIconStyle,
                    ),
                    Text(
                      heightValue.toString(),
                      textAlign: TextAlign.center,
                      style: kNumberTextStyle,
                    ),
                    Slider(value: 0.5, onChanged: null)
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
