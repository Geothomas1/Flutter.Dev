import 'package:flutter/material.dart';

class Refactor extends StatelessWidget {
  Widget rowButton({
    Colors buttonColor
  }){
    return(
       TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.green,
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child:Text('Gradient'),
                )
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget cricket = Icon(Icons.sports_cricket);
    Widget football = Icon(Icons.sports_football);
    Widget baseball = Icon(Icons.sports_basketball);
    Widget row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [cricket, football, baseball],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: ListView(
        children: [row, row,row,rowButton()],
      ),
    );
  }
}
