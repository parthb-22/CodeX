import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  String? name;
  List? topic;
  Screen1({super.key, this.name, this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: topic?.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 30,
                  ),
                  padding: EdgeInsets.only(left: 20, top: 7),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(167, 174, 49, 233),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(218, 158, 158, 158),
                          offset: Offset(10, 15),
                          blurRadius: 5,
                        ),
                      ]),
                  child: Center(
                    child: Text("${topic?[index]}"),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
