
import 'package:calculadora/components/display.dart';
import 'package:calculadora/components/keyboard.dart';
import 'package:calculadora/models/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget{

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = new Memory();


  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    //não deixa app mudar orientação da tela
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
        home: Column(
          children: <Widget>[
            Display(memory.get()),
            Keyboard(cb:this._onPressed)
          ],
        )
    );
  }
}