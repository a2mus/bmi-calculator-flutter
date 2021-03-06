import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  int weightValue = 60;
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
                      //for the unit of measurements
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
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
                    Expanded(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: kThumbColor,
                          overlayColor: kOverlayColor,
                          activeTrackColor: kActiveTrackColor,
                          inactiveTrackColor: kInactiveTrackColor,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          min: 100.0,
                          max: 250.0,
                          value: heightValue.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              heightValue = newValue.round();
                            });
                          },
                        ),
                      ),
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
                      childCard: Column(
                        children: [
                          Text(
                            kWeightLabel,
                            style: kTextIconStyle,
                          ),
                          Text(
                            weightValue.toString(),
                            style: kNumberTextStyle,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(),
                                RoundIconButton(),
                              ],
                            ),
                          )
                        ],
                      ),
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

class RoundIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: CircleBorder(),
      child: Icon(FontAwesomeIcons.minus),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      fillColor: kFillColorRoundIconButton,
    );
  }
}
