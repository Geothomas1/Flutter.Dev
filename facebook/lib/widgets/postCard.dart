import 'package:facebook/widgets/verifiedTick.dart';
import 'package:flutter/material.dart';
import 'imageIcons.dart';
import './footerPostButton.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String postOwner;
  final String postCreatdTime;
  final String titleText;
  final String postImage;
  final bool showBluetick;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  PostCard(
      {@required this.profileImage,
      @required this.postOwner,
      @required this.postCreatdTime,
      @required this.titleText,
      @required this.postImage,
      this.showBluetick = false,
      @required this.likeCount,
      @required this.commentCount,
      @required this.shareCount});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        hdivider(thikness: 2, color: Colors.grey[300]),
        postImageAction()
      ]),
    );
  }

  Widget postCardHeader() {
    return ListTile(
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
          showBluetick ? VerifiedTick() : SizedBox(),
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
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        titleText,
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 10,
                    )),
                SizedBox(width: 5),
                displayText(count: likeCount)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(count: commentCount),
                SizedBox(width: 5),
                displayText(count: "Comments"),
                SizedBox(width: 10),
                displayText(count: shareCount),
                SizedBox(width: 5),
                displayText(count: "Shares"),
                SizedBox(width: 5),
                ImageIcons(
                  imageName: profileImage,
                  displayStatus: false,
                  imageH: 20,
                  imageW: 20,
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ),
                    onPressed: () => {print("menu clicked")}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({@required String count}) {
    return Text(
      count,
      style: TextStyle(color: Colors.black),
    );
  }

  Widget divider() {
    return VerticalDivider(
      thickness: 1,
      color: Colors.grey[600],
    );
  }
  Widget hdivider({@required double thikness, @required Color color}) {
    return Divider(
      thickness: thikness,
      color: color,
    );
  }

  Widget postImageAction() {
    return Container(
       height: 35,
       padding: EdgeInsets.only(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FooterPostButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up,
              buttonAction: () => {print("Like action")},
              buttonColor: Colors.black),
              divider(),
          FooterPostButton(
              buttonText: "Comment",
              buttonIcon: Icons.comment,
              buttonAction: () => {print("Like action")},
              buttonColor: Colors.black), 
              divider(),  
          FooterPostButton(
              buttonText: "Share",
              buttonIcon: Icons.share,
              buttonAction: () => {print("Like action")},
              buttonColor: Colors.black),

        ],
      ),
    );
  }
}
