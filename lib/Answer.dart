

import 'package:flutter/material.dart';

class answer extends StatelessWidget{
final VoidCallback selectHandler;
final String answertext;
answer(this.selectHandler,this.answertext);

@override
Widget build(BuildContext context) {
return Container(
  width: double.infinity,
  child: RaisedButton(
    color: Colors.blue,
    child: Text(answertext),
    onPressed: selectHandler,
    textColor: Colors.white,

  ),

);
}

}