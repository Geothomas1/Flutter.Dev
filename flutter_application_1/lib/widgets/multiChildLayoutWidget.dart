import 'package:flutter/material.dart';

class MultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        color: Colors.grey,
        child: GridView.count(
          crossAxisCount:3 ,
          children: <Widget>[
            Container(
                color: Colors.red,
                width: 300,
                height: 200,
                child: Center(
                  child: Text("Aju Uncle"),
                )),
            Container(
                color: Colors.yellow,
                width: 300,
                height: 200,
                child: Center(
                  child: Text("Achanchan"),
                )),
            Container(
                color: Colors.green,
                width: 300,
                height: 200,
                child: Center(
                  child: Text("Anu"),
                )),
            Container(
                color: Colors.pink,
                width: 300,
                height: 200,
                child: Center(
                  child: Text("Anju"),
                )),
            Container(
                color: Colors.deepPurpleAccent,
                width: 300,
                height: 200,
                child: Center(
                  child: Text("Arun Kumar"),
                )),
            Container(
                color: Colors.orange,
                width: 300,
                height: 200,
                child: Center(
                  child: Text("Aparan"),
                )),
          ],
        ));
  }
}
