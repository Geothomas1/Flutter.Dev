import 'package:flutter/material.dart';

class MultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Colors.grey,
      child: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        padding: EdgeInsets.all(50),
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 300,
            height: 200,
            child: Center(
              child: Text("Aju Uncle"),
            ),
          ),
          Container(
            color: Colors.green,
            width: 300,
            height: 200,
            child: Center(child: Text("Achachan")),
          ),
          Container(
            color: Colors.pink,
            width: 300,
            height: 200,
            child: Center(
              child: Text("Anju"),
            ),
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 200,
            child: Center(
              child: Text("Ammu"),
            ),
          ),
          Container(
            color: Colors.yellow,
            width: 300,
            height: 200,
            child: Center(
              child: Text("Anu"),
            ),
          ),
        ],
      ),
    );
  }
}
