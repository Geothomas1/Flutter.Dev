import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData circularButtons;
  final void Function() buttonAction;
  final Color iconcolor;
 CircularButton({@required this.circularButtons, @required this.buttonAction,this.iconcolor=Colors.black});
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          circularButtons,
          size: 20,
          color: iconcolor,
        ),
        onPressed:buttonAction,
      ),
    );
  }
}
