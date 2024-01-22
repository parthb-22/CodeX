import 'package:flutter/material.dart';

class Employee extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Second Practical"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 255, 6, 6),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print("Button Pressed");
                },
                child: Text("Click Here")),
          ],
        ),
      ),
    );
  }
}
