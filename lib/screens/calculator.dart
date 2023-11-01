import 'package:calculadora/components/display.dart';
import 'package:calculadora/components/keyboard.dart';
import 'package:calculadora/constants/plataforms.dart';
import 'package:calculadora/model/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({
    super.key,
  });

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  void printResult(String comand) {
    setState(() {
      memory.applayCommand(comand);
    });
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConstrainedBox(
        constraints:BoxConstraints(maxHeight:  IS_DESKTOP ? 50 : 50) ,
        child: Column(
          children: <Widget>[
            Display(memory.value),
            Keyboard(cb: printResult),
          ],
        ),
      ),
    );
  }
}
