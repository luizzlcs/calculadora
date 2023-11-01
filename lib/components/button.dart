import 'package:calculadora/constants/plataforms.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const standart = Color.fromRGBO(112, 112, 112, 1);
  static const operations = Color.fromRGBO(206, 128, 2, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    this.big = false,
    this.color = standart,
    required this.cb,
    required this.text,
    super.key,
  });

  const Button.big({
    required this.cb,
    this.big = true,
    this.color = standart,
    required this.text,
    super.key,
  });

  const Button.operation({
    required this.cb,
    this.big = false,
    this.color = operations,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: IS_DESKTOP ? 10 : 10,
            maxHeight: IS_DESKTOP ? 10 : 10,
            minHeight: IS_DESKTOP ? 10 : 10,
            minWidth: IS_DESKTOP ? 10 : 10,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
            ),
            onPressed: () => cb(text),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ),
      ),
    );
  }
}
