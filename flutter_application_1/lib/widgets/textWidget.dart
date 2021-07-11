import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text("Hello Geo",style: TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          letterSpacing:2,
          wordSpacing: 20,
          fontStyle: FontStyle.italic
        ),),
      ),
    );
  }
}