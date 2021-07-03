import 'package:flutter/material.dart';
import 'package:mausam/const/const.dart';

// ignore: must_be_immutable
class CalculateButton extends StatelessWidget {
  Function onPress;
  String label;
  CalculateButton({this.onPress, this.label});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 8.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
