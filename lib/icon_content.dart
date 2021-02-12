import 'package:flutter/material.dart';

const cardFontColor = Color(0xFF8D8E98);
const textIconStyle = TextStyle(
    color: cardFontColor, fontSize: 36.0, fontWeight: FontWeight.bold);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String textIcon;

  IconContent({this.icon, this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: LayoutBuilder(builder: (context, constraint) {
            return Icon(
              icon,
              size: constraint.biggest.height,
            );
          }),
        ),
        SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Text(
            textIcon,
            style: textIconStyle,
          ),
        ),
      ],
    );
  }
}
