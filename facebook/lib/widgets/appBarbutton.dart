import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData appBarButtons;
  final void Function() buttonAction;
  AppBarButton({@required this.appBarButtons, @required this.buttonAction});
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
          appBarButtons,
          size: 20,
        ),
        onPressed:buttonAction,
      ),
    );
  }
}
