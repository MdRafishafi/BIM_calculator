import 'package:flutter/material.dart';

import './constants.dart';

class IconContent extends StatelessWidget {
  final String gender;
  final IconData icon;

  IconContent({@required this.gender, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}