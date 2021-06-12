import 'package:flutter/material.dart';
class SingleChildLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 400,
      height: 400,
      color: Colors.green,
      child:Center(
      child: Text("HELLO WORLD"),
    )
    );
  }
}