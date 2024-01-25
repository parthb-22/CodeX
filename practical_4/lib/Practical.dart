import 'package:flutter/material.dart';

class Employee extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fourth App"),
      ),
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 100,
            ),
            Container(
              child: Text("First row"),
              margin: EdgeInsets.only(left: 350),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 255, 7, 7),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 0, 0, 0),
                )
              ],
            ),
            SizedBox(
              height: 40,
              width: 40,
            ),
            Container(
              child: Text("Second row"),
              margin: EdgeInsets.only(left: 350),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 4, 255, 0),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 2, 234, 255)),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 255, 0, 225),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
