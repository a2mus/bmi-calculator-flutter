import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'my_card.dart';

const buttomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const maleIcon = FontAwesomeIcons.mars;
const textMale = 'ذكـر';
const femaleIcon = FontAwesomeIcons.venus;
const textFemale = 'أنثى';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  MyCard(
                    colour: activeCardColor,
                    childCard: IconContent(
                      icon: femaleIcon,
                      textIcon: textFemale,
                    ),
                  ),
                  MyCard(
                    colour: activeCardColor,
                    childCard: IconContent(
                      icon: maleIcon,
                      textIcon: textMale,
                    ),
                  ),
                ],
              ),
            ),
            MyCard(
              colour: activeCardColor,
            ),
            Expanded(
              child: Row(
                children: [
                  MyCard(
                    colour: activeCardColor,
                  ),
                  MyCard(
                    colour: activeCardColor,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              color: bottomContainerColor,
              width: double.infinity,
              height: buttomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
