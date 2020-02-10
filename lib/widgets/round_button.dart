import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonLabel;
  final Function buttonFunction;

  RoundButton({this.buttonColor, this.buttonLabel, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: buttonFunction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonLabel,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
