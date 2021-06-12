import 'package:flutter/material.dart';
class SingleChildLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding:EdgeInsets.all(100),
      child: Text("Hello World"),
      );
  }
}