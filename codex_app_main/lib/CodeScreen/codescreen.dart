import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class CodeScreen extends StatelessWidget {
  String? topicNames;
  Map codeData;
  CodeScreen({super.key, this.topicNames, required this.codeData});

  @override
  Widget build(BuildContext context) {
    // print(data?['codes']);

    return Scaffold(
      appBar: AppBar(
        title: Text("$topicNames"),
      ),
      body: ListView.builder(
        itemCount: codeData["codes"].length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Program ${index + 1}"),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      child: HighlightView(
                        "${codeData["codes"][index]}",
                        languageId: "dart.id",
                        theme: githubDarkDimmedTheme,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
