import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String textIcon;

  IconContent({this.icon, this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textIcon,
          style: kTextIconStyle,
        )
      ],
    );
  }
}
