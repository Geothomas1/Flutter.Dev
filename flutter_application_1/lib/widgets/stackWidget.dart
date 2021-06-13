import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack(
        textDirection: TextDirection.rtl,
        alignment: Alignment.bottomCenter,
        children:<Widget> [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
            width: 200,
            height: 200,
            color: Colors.pink,
          ),
          ),
        ],
      ),
    );
  }
}