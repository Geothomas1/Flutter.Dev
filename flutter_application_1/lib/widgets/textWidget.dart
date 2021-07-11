import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: TextField(
          keyboardType: TextInputType.name,
          onChanged:(String textValue){
            print(textValue);
          },
          onTap: ()=>{
            print("Tap happend")
          },
          enabled: true,
        )
      ),
    );
  }
}