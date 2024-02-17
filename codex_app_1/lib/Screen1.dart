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
      body: SizedBox(
        child: ListView.builder(
            itemCount: topic?.length,
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 250,
                    margin: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Text(
                        "${topic?[index]}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
