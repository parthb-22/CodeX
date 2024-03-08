import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  List quizQuestions;

  QuizScreen({super.key, required this.quizQuestions});

  @override
  State<QuizScreen> createState() => _QuizScreenState(quizQuestions);
}

class _QuizScreenState extends State<QuizScreen> {
  List quizQuestions;
  _QuizScreenState(this.quizQuestions);

  int questionIndex = 0;
  int selectedIndex = -1;
  int totalScore = 0;
  bool isEnabled = false;

  MaterialStatePropertyAll<Color?>? checkAns(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == selectedIndex) {
        if (selectedIndex == quizQuestions[questionIndex]["correctAnswer"]) {
          if (isEnabled == true) {
            totalScore++;
            print(totalScore);
          }
          return const MaterialStatePropertyAll(Colors.green);
        } else {
          return const MaterialStatePropertyAll(Colors.red);
        }
      } else {
        if (buttonIndex == quizQuestions[questionIndex]["correctAnswer"]) {
          return const MaterialStatePropertyAll(Colors.green);
        }
      }
    } else {
      return const MaterialStatePropertyAll(Colors.blue);
    }
    return const MaterialStatePropertyAll(Colors.blue);
  }

  Widget scoreBoard() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(187, 145, 51, 232),
        title:
            Text("Score Board", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
                totalScore >= 2
                    ? "Congratulations!!!"
                    : "Keep trying, you will improve!",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text("Your score is $totalScore out of ${quizQuestions.length}",
                style: const TextStyle(fontSize: 22)),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  questionIndex = 0;
                  totalScore = 0;
                });
              },
              child: Text("Play again"),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex == quizQuestions.length) {
      return scoreBoard();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(187, 145, 51, 232),
        title: Text("Quiz", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Questions: ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "${questionIndex + 1}/${quizQuestions.length}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
                "Q.${questionIndex + 1}  ${quizQuestions[questionIndex]["questions"]} ?",
                style: TextStyle(fontSize: 18)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: isEnabled
                ? null
                : () {
                    setState(() {
                      selectedIndex = 0;
                      isEnabled = !isEnabled;
                    });
                  },
            child: Text("A. ${quizQuestions[questionIndex]["options"][0]}"),
            style: ButtonStyle(
                backgroundColor: checkAns(0),
                fixedSize: MaterialStatePropertyAll(Size(250, 30))),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: isEnabled
                  ? null
                  : () {
                      setState(() {
                        selectedIndex = 1;
                        isEnabled = !isEnabled;
                      });
                    },
              child: Text("B. ${quizQuestions[questionIndex]["options"][1]}"),
              style: ButtonStyle(
                  backgroundColor: checkAns(1),
                  fixedSize: const MaterialStatePropertyAll(Size(250, 30)))),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: isEnabled
                  ? null
                  : () {
                      setState(() {
                        selectedIndex = 2;
                        isEnabled = !isEnabled;
                      });
                    },
              child: Text("C. ${quizQuestions[questionIndex]["options"][2]}"),
              style: ButtonStyle(
                  backgroundColor: checkAns(2),
                  fixedSize: const MaterialStatePropertyAll(Size(250, 30)))),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: isEnabled
                  ? null
                  : () {
                      setState(() {
                        selectedIndex = 3;
                        isEnabled = !isEnabled;
                      });
                    },
              child: Text("D. ${quizQuestions[questionIndex]["options"][3]}"),
              style: ButtonStyle(
                  backgroundColor: checkAns(3),
                  fixedSize: const MaterialStatePropertyAll(Size(250, 30)))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (questionIndex < quizQuestions.length) {
            setState(() {
              selectedIndex = -1;
              questionIndex++;
              isEnabled = false;
            });
          } else {
            setState(() {});
          }
        },
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
