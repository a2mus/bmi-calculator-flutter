import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  MyCard({@required this.colour, this.childCard});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
    );
  }
}
