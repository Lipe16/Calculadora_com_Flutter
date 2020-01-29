
import 'package:calculadora/components/button.dart';
import 'package:flutter/cupertino.dart';

class ButtonRow extends StatelessWidget{
  final List<Button> botoes;

  ButtonRow(this.botoes);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1,
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: botoes.fold(<Widget>[], (list, b){
          list.isEmpty ? list.add(b) : list.addAll( [SizedBox(width: 1), b ]);
          return list;
        })
      ))
    ;
  }

}