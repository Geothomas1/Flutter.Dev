import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButtons(
      {@required String buttonText,
      @required IconData buttonIcon,
      @required void Function() buttonAction,
      @required Color buttonColor}) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  Widget divider() {
    return VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        headerButtons(
            buttonText: "Live",
            buttonIcon: Icons.video_call,
            buttonAction: () => {print("Go to live")},
            buttonColor: Colors.red),
        divider(),
        headerButtons(
            buttonText: "Photos",
            buttonIcon: Icons.photo_album,
            buttonAction: () => {print("Go to Photos")},
            buttonColor: Colors.green),
        divider(),
        headerButtons(
            buttonText: "Rooms",
            buttonIcon: Icons.meeting_room,
            buttonAction: () => {print("Go to live")},
            buttonColor: Colors.orange),
      ]),
    );
  }
}
