import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: Scaffold(
        body: Center(
          child: Container(
            width: 320,
            height: 320,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left:100,top:150),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Text('Demo App By Geo'),
          ),
        ),
      ),
    );
  }
}
