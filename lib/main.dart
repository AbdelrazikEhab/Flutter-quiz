import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Colors, Column, FloatingActionButton, Icon, Icons, Key, MainAxisAlignment, MaterialApp, RaisedButton, Scaffold, State, StatefulWidget, StatelessWidget, Text, Theme, ThemeData, Widget, runApp;
import 'package:flutter/services.dart';
import 'package:flutter_app/questions.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApp2();
  }

}
class MyApp2 extends State<MyApp>{
var questionindex=0;
var totalscore=0;

void restartquiz()
{
setState(() {
 questionindex=0;
 totalscore=0;
});

}


  void answers(int score)
  {
    totalscore=totalscore+score;

    if(questionindex < questions.length)
    {
      print('We have more questions');

    }
    else
      print('No more question');

     setState(() {
      questionindex=questionindex+1;

     });
    print(questionindex);
  }
 final questions= const
[{
  'questionText': 'What\'s your favorite Color ?',
'amswers': [
  {'text':'Black','score':10},
  {'text':'Red','score':1},
  {'text':'White','score':5},
  {'text':'Blue','score':3},
],},
  {
    'questionText': 'What\'s your favorite Color ?',
    'amswers': [
      {'text':'Lion','score':11},
      {'text':'Cat','score':6},
      {'text':'Dog','score':8},
      {'text':'Snake','score':4},
    ],},
  {
'questionText': 'What\'s your favorite Instruction ?',
'amswers': [
   {'text':'Max','score':1},
   {'text':'Max','score':1},
   {'text':'Max','score':1},
   {'text':'Max','score':1},
],},
];
Widget build(BuildContext Context)
{
  return MaterialApp(home:Scaffold(
    appBar: AppBar(title:Text ('My First App'),
        backgroundColor: Colors.blue),
    body: questionindex<questions.length?
        quiz(morequestions:questions,answerofqestions:answers,questionIndex: questionindex,)

:  result(totalscore,restartquiz)   ,


  ),);
}

}
//      RaisedButton(child: Text('Answer 1'),onPressed:()=>answers() ,color: Colors.blue,textColor: Colors.white,shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(16.0),))),
//       RaisedButton(child: Text('Answer 2'),onPressed:()=>answers() ,color: Colors.blue,textColor: Colors.white,shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(16.0),))),
//       answer(answers),
//       answer(answers),
//       answer(answers),