import 'package:codex_app_main/CodeScreen/codescreen.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  String? techName = '';
  List? topics = [];
  TopicScreen({super.key, this.techName, this.topics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$techName"),
      ),
      body: ListView.builder(
        itemCount: topics!.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 30,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CodeScreen(
                              topicNames: topics![index]["topicTitle"],
                              codeData: topics![index],
                            ),
                          ));
                    },
                    child: Text("${topics![index]["topicTitle"]}"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueGrey))),
              ),
            ],
          );
        },
      ),
    );
  }
}
