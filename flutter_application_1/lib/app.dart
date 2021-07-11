import 'package:flutter/material.dart';
import './widgets/textWidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: Scaffold(
        body: TextWidget(),
        backgroundColor: Colors.white,
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
          onPressed: () => {print("Click on floting action button")},
          icon: Icon(Icons.publish),
          color: Colors.red,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Demand me menu"),
                decoration: BoxDecoration(color: Colors.green),
              ),
              ListTile(
                title: Text("Post Demand"),
                subtitle: Text("post the demand you need"),
                onTap: () => {print("Post Demand pressed")},
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Posted Jobs"),
                subtitle: Text("view posted Jobs"),
                onTap: () => {print("view Demand pressed")},
                leading: Icon(Icons.post_add),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Profile"),
                subtitle: Text("View profile"),
                onTap: () => {print("Profile pressed")},
                leading: Icon(Icons.verified_user),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Setting"),
                subtitle: Text("Edit your settings"),
                onTap: () => {print("Post Demand pressed")},
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Signout"),
                subtitle: Text("Signout from Demand me"),
                onTap: () => {print("Signout Demand pressed")},
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      ),
    );
  }
}
