import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  Color colorCard;
  Widget cardChild;
  Function onPress;
  MyCard({this.colorCard, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(7.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
