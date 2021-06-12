import 'package:flutter/material.dart';

class MultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(
              child: Text("One"),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text("Two"),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            child: Center(
              child: Text("Three"),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text("Four"),
            ),
          ),
        ],
      ),
    );
  }
}
