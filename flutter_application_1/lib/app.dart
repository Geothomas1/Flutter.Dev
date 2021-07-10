import 'package:flutter/material.dart';
import './widgets/buttonWidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: Scaffold(
        body: ButtonWidget(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 10,
          title: Text("Demand Me"),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () => {print("Action button ")},
              icon: Icon(Icons.bookmark),
            ),
            IconButton(
              onPressed: () => {print("Action 2 button")},
              icon: Icon(Icons.mail),
            ),
            IconButton(
              onPressed: () => {print("Action 3 button")},
              icon: Icon(Icons.message),
            )
          ],
        ),
        floatingActionButton: IconButton(
          onPressed: ()=>{
            print("Click on floting action button")
          },
          icon: Icon(Icons.publish),
          color: Colors.red,
        ),
        drawer: Drawer(),
      ),
    );
  }
}
