import 'package:flutter/material.dart';
import 'package:mausam/const/const.dart';

class IconButtonMF extends StatelessWidget {
  final IconData icon;
  final String label;

  IconButtonMF({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
