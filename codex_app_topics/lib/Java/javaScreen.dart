import 'package:codex_app_topics/Java/javaTopics/javaIntro.dart';
import 'package:flutter/material.dart';

class JavaScreen extends StatelessWidget {
  const JavaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java"),
      ),
      body: Center(
        child: Container(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 20, right: 30),
              padding: EdgeInsets.only(left: 85, top: 8),
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 209, 209, 209)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JavaIntro()));
                },
                child: Text(
                  "Introduction to Java",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
