import 'package:flutter/material.dart';
import './widgets/buttonWidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: Scaffold(
        body: ButtonWidget(),
      ),
    );
  }
}
