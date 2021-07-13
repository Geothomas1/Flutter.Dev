import 'package:flutter/material.dart';
import './widgets/appBarbutton.dart';
import './sections/statusSection.dart';
import './sections/headerButtonSection.dart';
import './sections/roomSection.dart';

class Home extends StatelessWidget {
  Widget divider({@required double thikness, @required Color color}) {
    return Divider(
      thickness: thikness,
      color: color,
    );
  }

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
          StatusSection(),
          divider(thikness: 1, color: Colors.grey[300]),
          HeaderButtonSection(),
          divider(thikness: 10, color: Colors.grey[300]),
          RoomSection(),
          divider(thikness: 5, color: Colors.grey[300]),
        ],
      ),
    ));
  }
}
