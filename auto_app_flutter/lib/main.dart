import 'package:flutter/material.dart';
import 'package:auto_app_flutter/Screens/registerScreen.dart';
void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Auto Cash',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterScreen.id,
      routes: <String, WidgetBuilder>{
        RegisterScreen.id: (BuildContext context) => new RegisterScreen(),
      },
      home: Container(),
    );
  }
}

