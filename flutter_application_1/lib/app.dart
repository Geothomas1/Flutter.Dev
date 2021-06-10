import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: Scaffold(
        body: Container(
          child: Center(child: Text('Demo App By Geo')),
        ),
      ),
    );
  }
}
