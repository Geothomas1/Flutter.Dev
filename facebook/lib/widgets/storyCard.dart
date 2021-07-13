import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';
import './imageIcons.dart';
class StoryCard extends StatelessWidget {
  final String lableText;
  final String story;
  final String dp;
  final bool createStatusButton;
  StoryCard({
    @required this.lableText,
    @required this.story,
    @required this.dp,
    this.createStatusButton=false
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 3,
            child: createStatusButton? CircularButton(
              circularButtons: Icons.add,
              buttonAction: () => {print("Add status")},
              iconcolor: Colors.blue,
            ):ImageIcons(imageName:dp ,displayStatus:false,displayBorder:true ),
          ),
          Positioned(
            bottom: 10,
            left: 40,
            child: Text(
              lableText !=null ?lableText:"",
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
