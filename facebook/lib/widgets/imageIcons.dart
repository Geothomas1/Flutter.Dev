import 'package:flutter/material.dart';

class ImageIcons extends StatelessWidget {
  final String imageName;
  ImageIcons({@required this.imageName});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.only(left: 3, right: 3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            imageName,
            width: 50,
            height: 50,
          ),
        ),
      ),
      Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2)),
          ))
    ]);
  }
}
