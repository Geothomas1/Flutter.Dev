import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
      width: 800,
      height: 800,
      color: Colors.grey,
      child: Stack( 
        children: <Widget>[
          Positioned(
            left: 10,
            top: 80,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.pink,
              child:Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                fit:BoxFit.fill,
              )
            ),
          ),
          Positioned(
            right: 10,
            top: 20,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
              child: Image.asset(
                "assets/img2.jpg",
                fit:BoxFit.fill,
                ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
