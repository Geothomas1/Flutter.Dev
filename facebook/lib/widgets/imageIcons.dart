import 'package:flutter/material.dart';
class ImageIcons extends StatelessWidget {
  final String imageName;
ImageIcons({
  @required this.imageName
});
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Image.asset(
        imageName,
        width: 50,
        height:50,
      ),
      );
  }
}