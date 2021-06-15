import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  void buttonClick(){
    print("Button Clicked");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: buttonClick,
          style: TextButton.styleFrom(
            textStyle:TextStyle(fontSize: 30,
            backgroundColor: Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
            height: 5,
            ),
          ),
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
