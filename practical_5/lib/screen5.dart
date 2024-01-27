import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task-5"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // color: Color.fromARGB(255, 255, 0, 0),
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(70)),
        ),
      ),
    );
  }
}
