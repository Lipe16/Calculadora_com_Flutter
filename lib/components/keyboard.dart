
import 'package:calculadora/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_row.dart';

class Keyboard extends StatelessWidget{
  final Function cb;

  Keyboard({@required this.cb}); 

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: Column(
          children: <Widget>
          [
            ButtonRow( [Button(text:"C", big:true, color: Button.DARK , cb:this.cb), Button(text:'%',color: Button.DARK, cb:this.cb), Button.operation(text:'/', cb:this.cb)] ),
            SizedBox(height: 1),
            ButtonRow( [Button(text:"7", cb:this.cb), Button(text:'8', cb:this.cb), Button(text:'9', cb:this.cb), Button.operation(text:'*', cb:this.cb)] ),
            SizedBox(height: 1),
            ButtonRow( [Button(text:"4", cb:this.cb), Button(text:'5', cb:this.cb), Button(text:'6', cb:this.cb), Button.operation(text:'-', cb:this.cb)] ),
            SizedBox(height: 1),
            ButtonRow( [Button(text:"1", cb:this.cb), Button(text:'2', cb:this.cb), Button(text:'3', cb:this.cb), Button.operation(text:'+', cb:this.cb)] ),
            SizedBox(height: 1),
            ButtonRow( [Button(text:"0", big:true, cb:this.cb), Button(text:'.', cb:this.cb), Button.operation(text:'=', cb:this.cb)] )
          ],
        ),
    );
  }

}