import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Employee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Practical"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 200),
            height: 100,
            width: 100,
            color: Color.fromARGB(171, 136, 54, 244),
          ),
          SizedBox(height: 20, width: 20),
          Container(
            margin: EdgeInsets.only(top: 200),
            height: 100,
            width: 100,
            color: Color.fromARGB(200, 238, 244, 54),
          ),
          SizedBox(height: 20, width: 20),
          Container(
            margin: EdgeInsets.only(top: 200),
            height: 100,
            width: 100,
            color: Color.fromARGB(174, 244, 54, 54),
          )
        ],
      ),
    );
  }
}
