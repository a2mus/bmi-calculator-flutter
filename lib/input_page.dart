import 'package:flutter/material.dart';

const buttomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);

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
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          children: [
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

class MyCard extends StatelessWidget {
  final Color colour;
  MyCard({@required this.colour});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colour,
        ),
      ),
    );
  }
}
