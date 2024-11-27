import 'package:demo_codex/topicui.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              // color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(150)),
                  color: Colors.amber),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Hi, Shubham"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Hope you are fine"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Text("Courses for you"),
              margin: EdgeInsets.only(top: 50),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicUI(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Container(
              child: Text("Upcoming courses"),
              margin: EdgeInsets.only(top: 50),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 50),
              width: 300,
              height: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
