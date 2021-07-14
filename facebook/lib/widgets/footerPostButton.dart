import 'package:flutter/material.dart';
class FooterPostButton extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color buttonColor;
  FooterPostButton({
@required  this.buttonText,
      @required this.buttonIcon,
      @required this.buttonAction,
      @required this.buttonColor
  });
   
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
      
    );
  }

  
  }
