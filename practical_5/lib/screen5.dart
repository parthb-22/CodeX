import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task-5")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Color.fromARGB(255, 255, 0, 0),
          child: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
