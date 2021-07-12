import 'package:flutter/material.dart';
import 'package:code_refactoring/refactor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Refactor()
    );
  }
}

