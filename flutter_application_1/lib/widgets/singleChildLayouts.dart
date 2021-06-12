import 'package:flutter/material.dart';
class SingleChildLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Align(
      child: Text("Hey Geo Thomas"),
      alignment: Alignment.center,
    );
  }
}