import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0;
  List<Map> questions = [
    {
      "question": "Founder of BJP",
      "options": ["L K Advani", "Modi", "Amit Shaha", "Fadnvis"],
      "correctOption": 0
    },
    {
      "question": "Founder of Congress",
      "options": ["M Gandhi", "Rahul Gandhi", "Nehru", "Indira Gandhi"],
      "correctOption": 2
    },
    {
      "question": "Founder of Shivsena",
      "options": ["B Thakre", "Udhav Thakre", "Eknath Shinde", "Raj Thakre"],
      "correctOption": 0
    }
  ];
  int selectedIndex = -1;
  int totalScore = 0;
  bool quizFinish = false;
  MaterialStatePropertyAll<Color?>? checkAnswer(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == selectedIndex) {
        if (selectedIndex == questions[questionIndex]["correctOption"]) {
          totalScore++;
          return const MaterialStatePropertyAll(Colors.green);
        } else {
          return const MaterialStatePropertyAll(Colors.red);
        }
      } else {
        if (buttonIndex == questions[questionIndex]["correctOption"]) {
          return const MaterialStatePropertyAll(Colors.green);
        }
      }
    } else {
      return const MaterialStatePropertyAll(Colors.blueGrey);
    }
    return const MaterialStatePropertyAll(Colors.blueGrey);
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
            Text("Your score is $totalScore out of ${questions.length}",
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
    if (questionIndex == 3) {
      return scoreBoard();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(187, 145, 51, 232),
        title: Text("TechG Quiz App ",
            style: TextStyle(fontWeight: FontWeight.bold)),
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
                "${questionIndex + 1}/${questions.length}",
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
                "Q.${questionIndex + 1}  ${questions[questionIndex]["question"]} ?",
                style: TextStyle(fontSize: 18)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Text("A. ${questions[questionIndex]["options"][0]}"),
            style: ButtonStyle(
                backgroundColor: checkAnswer(0),
                fixedSize: MaterialStatePropertyAll(Size(150, 30))),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Text("B. ${questions[questionIndex]["options"][1]}"),
              style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                  fixedSize: MaterialStatePropertyAll(Size(150, 30)))),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Text("C. ${questions[questionIndex]["options"][2]}"),
              style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                  fixedSize: MaterialStatePropertyAll(Size(150, 30)))),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Text("D. ${questions[questionIndex]["options"][3]}"),
              style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                  fixedSize: MaterialStatePropertyAll(Size(150, 30)))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (questionIndex < questions.length) {
            setState(() {
              selectedIndex = -1;
              questionIndex++;
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
