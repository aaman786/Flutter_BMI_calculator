import 'package:flutter/material.dart';

// InputPage Components

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.onPressed, required this.icon});
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 50, width: 50),
      shape: CircleBorder(),
      fillColor: Colors.blue,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.amber,
        size: 50,
      ),
    );
  }
}
