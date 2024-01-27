import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CodeX",
          style: TextStyle(
              color: const Color.fromARGB(255, 230, 215, 215),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: Color.fromARGB(122, 189, 7, 255),
        actions: [
          IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(Icons.search),
            tooltip: "This is search bar",
          ),
          IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(Icons.call),
          )
        ],
      ),
      body: Container(
        height: 300,
        width: 300,
        child: Image.asset("images/image2.png", fit: BoxFit.cover),
      ),
    );
  }
}
