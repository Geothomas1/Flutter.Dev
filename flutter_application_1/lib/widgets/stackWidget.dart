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
              height: 100,
              color: Colors.pink,
            ),
          ),
          Positioned(
            right: 10,
            top: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Image.network(
                "https://bit.ly/3vo3HSG"
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
