import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class question extends StatelessWidget
{
  final String Questiontext;
   question(this.Questiontext);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container
     (
     width: double.infinity,
     margin: EdgeInsets.all(10),
     child:
     Text(Questiontext,
     style: TextStyle(fontSize: 25),
     textAlign: TextAlign.center,),

   );
  }


}