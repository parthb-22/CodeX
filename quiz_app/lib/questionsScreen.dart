import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;
  List<Map> questions = [
    {
      "question": "Founder of BJP?",
      "options": ["L K Advani", "Modi", "Amit Shaha", "Fadnvis"],
      "correctOption": 0
    },
    {
      "question": "Founder of Congress?",
      "options": ["M Gandhi", "Rahul Gandhi", "Nehru", "Indira Gandhi"],
      "correctOption": 2
    },
    {
      "question": "Founder of Shivsena?",
      "options": ["B Thakre", "Udhav Thakre", "Eknath Shinde", "Raj Thakre"],
      "correctOption": 0
    }
  ];
  List<bool> color = [false, false, false, false];
  void correctAnswer(int optionIndex) {
    print("button pressed");
    setState(() {
      if (optionIndex == questions[index]["correctOption"]) {
        color[optionIndex] = true;
      } else {
        color[optionIndex] = false;
      }
    });
  }

  Color buttonColor(int optionIndex) {
    if (color[optionIndex]) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Total Questions ${questions.length}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Q.${index + 1} ${questions[index]["question"]}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    correctAnswer(0);
                  },
                  child: Text("A. ${questions[index]["options"][0]}"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(buttonColor(0)))),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    correctAnswer(1);
                  },
                  child: Text(
                    "B. ${questions[index]["options"][1]}",
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(buttonColor(1)))),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    correctAnswer(2);
                  },
                  child: Text("C. ${questions[index]["options"][2]}"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(buttonColor(2)))),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    correctAnswer(3);
                  },
                  child: Text("D. ${questions[index]["options"][3]}"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(buttonColor(3)))),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        if (index > 0) {
                          setState(() {
                            index = index - 1;
                          });
                        }
                      },
                      child: Icon(
                        Icons.navigate_before,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              const Color.fromARGB(255, 54, 57, 244)))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      if (index < questions.length - 1) {
                        setState(() {
                          index = index + 1;
                        });
                      }
                    },
                    child: Icon(Icons.navigate_next),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
