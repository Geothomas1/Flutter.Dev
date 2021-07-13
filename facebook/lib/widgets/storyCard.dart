import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';
import '../post.dart';

class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(dq), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 3,
            child: CircularButton(
              circularButtons: Icons.add,
              buttonAction: () => {print("Add status")},
              iconcolor: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 40,
            child: Text(
              "Add Story",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
