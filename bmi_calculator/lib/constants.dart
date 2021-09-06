import 'package:flutter/material.dart';

Color kActiveColour = Colors.blueGrey[500]!;
Color kInActiveColour = Colors.grey[600]!;
Color kElementTextStyleColour = Colors.brown[900]!;

const EdgeInsetsGeometry kMargin = EdgeInsets.only(top: 10, right: 5, left: 5);
BorderRadius kBorderRadiusCircular = BorderRadius.circular(10);
enum gender { male, female }

TextStyle kElementTextStyle() {
  return TextStyle(
      fontSize: 70,
      fontWeight: FontWeight.w700,
      color: kElementTextStyleColour);
}

TextStyle kLabelTextStyle() {
  return TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
}
