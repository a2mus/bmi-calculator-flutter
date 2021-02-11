import 'package:flutter/material.dart';

import 'input_page.dart';

const scaffoldBackgroundColor = Color(0xFF0A0E21);
const primaryColor = Color(0xFF0A0E21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.white, fontSize: 25))),
      home: InputPage(),
    );
  }
}
