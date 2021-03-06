import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'my_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111238);

const maleIcon = FontAwesomeIcons.mars;
const textMale = 'ذكـر';
const femaleIcon = FontAwesomeIcons.venus;
const textFemale = 'أنثى';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: MyCard(
                        colour: selectedGender == Gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                        childCard: IconContent(
                          icon: femaleIcon,
                          textIcon: textFemale,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: MyCard(
                        colour: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        childCard: IconContent(
                          icon: maleIcon,
                          textIcon: textMale,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
