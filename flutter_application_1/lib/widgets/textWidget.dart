import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TextField(
        keyboardType: TextInputType.name,
        onChanged: (String textValue) {
          print(textValue);
        },
        onTap: () => {print("Tap happend")},
        enabled: true,
        controller: TextEditingController(),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(50)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(50)),
              icon:Icon(Icons.account_box_rounded,color: Colors.red),
              suffixIcon: Icon(Icons.usb_rounded),
              helperText: "Enter your name",
              labelText: "Username",
              hintText: "Geo Thomas"
        ),
      )),
    );
  }
}
