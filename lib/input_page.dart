import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
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
                    colour: Color(0xFF1D1E33),
                  ),
                  MyCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ],
              ),
            ),
            MyCard(
              colour: Color(0xFF1D1E33),
            ),
            Expanded(
              child: Row(
                children: [
                  MyCard(
                    colour: Color(0xFF1D1E33),
                  ),
                  MyCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  Color colour;
  MyCard({this.colour});
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
