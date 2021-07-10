import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  void buttonClick(){
    print("Button Clicked");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: OutlinedButton(
          onPressed: ()=>{
            print('Clicked ok')
          },
          child: Text("Clcik Me"),
        )
      ),
    );
  }
}
