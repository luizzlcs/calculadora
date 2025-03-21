import 'package:calculadora/constants/plataforms.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart  ';

class Display extends StatelessWidget {
  final String text;

  const Display(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: IS_DESKTOP ? 300 : 100,
          minWidth: IS_DESKTOP ? 200 : 50,
          maxHeight: IS_DESKTOP ? 200 : 300,
          minHeight: IS_DESKTOP ? 100 : 300,
        ),
        color: const Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                maxFontSize: 80,
                minFontSize: 20,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 80,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
