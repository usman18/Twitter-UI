import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  final IconData icon;
  final String content;

  IconContent({@required this.icon, @required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon,
          color: Color(0xff6E757F),
          size: 15,
        ),
        SizedBox(width: 8,),
        Text(content),
      ],
    );
  }
}
