import 'package:flutter/material.dart';

class Employe extends StatelessWidget {
  const Employe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: 400,
            // color: Colors.red,
            margin: EdgeInsets.only(left: 0, top: 0),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(700),
                  topRight: Radius.circular(700),
                  bottomLeft: Radius.circular(1100),
                  bottomRight: Radius.circular(0)),
              color: Colors.red,
            ),
          ),
          Container(
            height: 500,
            width: 400,
            // color: Colors.red,
            margin: EdgeInsets.only(right: 0, top: 0),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 7),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(700),
                  topLeft: Radius.circular(700),
                  bottomRight: Radius.circular(1100),
                  bottomLeft: Radius.circular(0)),
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
