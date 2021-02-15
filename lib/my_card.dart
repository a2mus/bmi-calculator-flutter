import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  // Function as first order object
  final Function tapFunction;
  MyCard({@required this.colour, this.childCard, this.tapFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapFunction,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colour,
        ),
      ),
    );
  }
}
