import 'package:flutter/material.dart';

class TopicUI extends StatelessWidget {
  const TopicUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text("Java"),
                    ),
                    Container(
                      child: Text("Full stack"),
                    )
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 594,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 200,
                  color: Colors.red,
                  margin: EdgeInsets.all(50),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
