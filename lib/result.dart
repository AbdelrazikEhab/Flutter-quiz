import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './Answer.dart';
class result extends StatelessWidget
{
  final int resulscore;
  final VoidCallback restart;
  result(this.resulscore,this.restart);
String get resultphrase
{
   String resulttext='You did it....';
   if( resulscore>=8)
     {
       resulttext='You are Awsome and innoceent...';
     } if(resulscore>=12)
       {
         resulttext='Prety likeable...';
       }
    if(resulscore>=16)
   {
     resulttext='You are ... Strong';
   }  if( resulscore < 8) {
     resulttext = 'You are so bad :( ';
   }
return resulttext;

}

  @override
  Widget build(BuildContext context) {
    return  Center(child:
    Column(
      children: <Widget>[

      Padding(
        padding: EdgeInsets.all(10),
        child:
        Text(resultphrase,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),

        Padding(
          padding: EdgeInsets.all(10),
         child:        Text('Your result = '+"${resulscore}"),
        ),

        FlatButton(child: Text('Restrat Quiz...!'),onPressed: restart ,textColor: Colors.blue,),


      ],
    ),


    );
  }





}