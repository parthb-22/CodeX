import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task-2"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.amber,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 100,
                color: Color.fromARGB(255, 255, 7, 7),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 100,
                color: Color.fromARGB(255, 33, 243, 117),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
