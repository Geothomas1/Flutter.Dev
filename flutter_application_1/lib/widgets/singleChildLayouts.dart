import 'package:flutter/material.dart';
class SingleChildLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 200,
      height: 100,
      child:Center(
        child:Text("Hello World")
      ) ,
    );
  }
}