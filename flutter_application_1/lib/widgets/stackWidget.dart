import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
      width: 400,
      height: 400,
      color: Colors.grey,
      child: Stack( 
        children: <Widget>[
          Positioned(
            left: 10,
            top: 80,
            child: Container(
              width: 100,
              height: 50,
              color: Colors.pink,
            ),
          ),
          Positioned(
            right: 10,
            top: 20,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            top: 10,
            bottom: 20,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ],
      ),
    )
    );
  }
}
