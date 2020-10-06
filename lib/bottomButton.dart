import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String textInButton;
  final Function actionOnPress;

  BottomButton({@required this.actionOnPress,@required this.textInButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        actionOnPress();
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            textInButton,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContionerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}