import 'package:flutter/material.dart';

class ImageIcons extends StatelessWidget {
  final String imageName;
  final bool displayStatus;
  final bool displayBorder;
  final double imageW;
  final double imageH;
  ImageIcons(
      {@required this.imageName,
      @required this.displayStatus,
      this.displayBorder = false,
      this.imageH = 50,
      this.imageW = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(width: 2, color: Colors.blueAccent)
                : Border()),
        padding: EdgeInsets.only(left: 3, right: 3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            imageName,
            width: imageW,
            height: imageH,
          ),
        ),
      ),
      displayStatus == true
          ? Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
              ),
            )
          : SizedBox()
    ]);
  }
}
