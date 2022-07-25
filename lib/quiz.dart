import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './questions.dart';
import './Answer.dart';

class quiz extends StatelessWidget
{
  final List<Map<String,Object>>morequestions;
  final Function answerofqestions;
  final int questionIndex;
  // ignore: use_key_in_widget_constructors
   quiz({required this.morequestions,required this.answerofqestions,required this.questionIndex});

  @override
  Widget build(BuildContext context) {

      return  Column
          (children: [
          question(
            morequestions [questionIndex]['questionText'] as String,

          ),
          ...(morequestions [questionIndex]['amswers']  as List<Map<String,Object>>).map((answerr) {

            return answer(()=>answerofqestions(answerr['score']),answerr['text']as String);

          }).toList()
        ],

        );


  }
}