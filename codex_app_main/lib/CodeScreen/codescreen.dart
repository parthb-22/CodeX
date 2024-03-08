import 'package:codex_app_main/QuizScreen/quizscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';

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
      body: Container(
        child: ListView.builder(
          itemCount: codeData["codes"].length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                      child: Text('Program ${index + 1}'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  child: HighlightView(
                    "${codeData["codes"][index]}",
                    languageId: "java",
                    theme: githubDarkDimmedTheme,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuizScreen(
                          quizQuestions: codeData["quiz"],
                        )));
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 87, 215, 93)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)))),
          child: Text("Play Quiz")),
    );
  }
}
