import 'package:facebook/post.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Image.asset(
        dq,
        width: 50,
        height:50,
      ),
      ),
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
