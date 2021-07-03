import 'package:flutter/material.dart';
import 'package:mausam/const/const.dart';

// ignore: must_be_immutable
class RoundButton extends StatelessWidget {
  IconData icon;
  Function onPresss;
  RoundButton({this.icon, this.onPresss});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPresss,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: kActiveCardColour,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
