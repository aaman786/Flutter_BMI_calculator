import 'package:flutter/material.dart';
import '../constants.dart';

class GenderContent extends StatelessWidget {
  const GenderContent({required this.genderText, required this.genderIcon});
  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          genderText,
          style: kLabelTextStyle(),
        ),
        SizedBox(
          height: 4,
        ),
        Icon(
          genderIcon,
          color: kElementTextStyleColour,
          size: 90,
        ),
      ],
    );
  }
}

class InputPageContainer extends StatelessWidget {
  InputPageContainer({this.containerChild, required this.colour});
  final Widget? containerChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMargin,
      decoration: BoxDecoration(
          borderRadius: kBorderRadiusCircular,
          color: colour,
          border: Border.all(color: Colors.lime, width: 2.5)),
      child: containerChild,
    );
  }
}
