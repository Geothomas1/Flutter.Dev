import 'package:flutter/material.dart';

class basicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.8,
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.only(left: 100, top: 150),
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(10, 10),
            ),
          ]),
      child: Text('Demo App By Geo'),
    );
  }
}
