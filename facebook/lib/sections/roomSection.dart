import 'package:facebook/post.dart';
import 'package:flutter/material.dart';
import '../widgets/imageIcons.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left:3,right:4),
      child:OutlinedButton.icon(
      onPressed: () => {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
      label: Text(
        "Start room",
        style: TextStyle(color: Colors.purple),
      ),
      icon: Icon(
        Icons.video_call,
        color: Colors.blue,
      ),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          ImageIcons(imageName: noorin),
          ImageIcons(imageName: pr),
          ImageIcons(imageName: sharuk),
          ImageIcons(imageName: spr),
          ImageIcons(imageName: sunnyandtovino),
          ImageIcons(imageName: tovino),
        ],
      ),
    );
  }
}
