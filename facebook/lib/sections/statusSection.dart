
import 'package:facebook/post.dart';
import 'package:flutter/material.dart';
import '../widgets/imageIcons.dart';
class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:ImageIcons(imageName: dq,displayStatus: false),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What on your mind ....",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none

        ),
      ),
    );
  }
}
