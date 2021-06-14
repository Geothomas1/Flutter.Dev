import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
      width: 400,
      height: 400,
      color: Colors.grey,
      child: Stack( 
        children: <Widget>[
          Positioned(
            left: 10,
            top: 80,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.pink,
              child: Image.asset("assets/img1.jpeg"),
            ),
          ),
          Positioned(
            right: 10,
            top: 20,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child: Image(
                image: AssetImage(
                  "assets/img2.jpg"
                ),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
