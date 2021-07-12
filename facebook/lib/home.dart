import 'package:flutter/material.dart';
import './widgets/appBarbutton.dart';
import './sections/statusSection.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          AppBarButton(
            appBarButtons: Icons.search,
            buttonAction: () => {print("search button clicked")},
          ),
          AppBarButton(
            appBarButtons: Icons.notifications,
            buttonAction: () => {print("alert button clicked")},
          ),
          AppBarButton(
            appBarButtons: Icons.message,
            buttonAction: () => {print("message button clicked")},
          ),
        ],
      ),
      body: ListView(
        children: [
          StatusSection()
        ],
      ),
    ));
  }
}
