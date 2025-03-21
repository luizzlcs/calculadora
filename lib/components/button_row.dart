import 'package:calculadora/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

   ButtonRow({required this.buttons, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons,
      ),
    );
  }
}
