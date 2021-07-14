import 'package:facebook/widgets/verifiedTick.dart';
import 'package:flutter/material.dart';
import 'imageIcons.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String postOwner;
  final String postCreatdTime;
  PostCard(
      {@required this.profileImage,
      @required this.postOwner,
      @required this.postCreatdTime});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ListTile(
          leading: ImageIcons(
            imageName: profileImage,
            displayStatus: false,
            displayBorder: false,
          ),
          title: Row(
            children: [
              Text(
                postOwner,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 4),
              VerifiedTick(),
            ],
          ),
          subtitle: Row(
            children: [
              Text(postCreatdTime != null ? postCreatdTime : ""),
              SizedBox(width: 3),
              Icon(
                Icons.public,
                color: Colors.grey[700],
                size: 15,
              )
            ],
          ),
          trailing: IconButton(
            onPressed: () => {print("Open more menu")},
            icon: Icon(Icons.more_horiz_outlined, color: Colors.grey[700]),
          ),
        )
      ]),
    );
  }
}
