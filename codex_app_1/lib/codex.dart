import 'package:codex_app_1/Screen1.dart';
import 'package:flutter/material.dart';

class CodeX extends StatelessWidget {
  CodeX({super.key});

  List<String> dartTopics = [
    "Inheritance",
    "Null Safety",
    "Mixin",
    "Abstract Class"
  ];
  List<String> javaTopics = [
    "Inheritance",
    "Polymorphism",
    "Type casting",
    "Abstract Class"
  ];

  Widget reusableCard(
      BuildContext context, String name, String imageURL, List topicList) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Screen1(name: name, topic: topicList)));
      },
      child: Container(
        height: 130,
        width: 120,
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
        // child: Image.asset(imageURL),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageURL), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 9, 9, 9),
                  offset: Offset(10, 10),
                  blurRadius: 10)
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: Text(
          "CodeX",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.only(top: 10),
          height: 100,
          width: 100,
          child: Image.asset(
            "images/logo.png",
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Search Box");
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SizedBox(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Languages-",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reusableCard(
                    context, "Dart", "images/Dart-logo.png", dartTopics),
                reusableCard(
                    context, "Java", "images/java-14-logo.png", javaTopics),
                reusableCard(
                    context, "Python", "images/Python-logo.png", dartTopics),
                reusableCard(
                    context, "JavaScript", "images/js-logo.png", javaTopics),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Frameworks-",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reusableCard(
                    context, "Flutter", "images/flutter-logo.png", javaTopics),
                reusableCard(
                    context, "React", "images/react-logo.png", dartTopics),
                reusableCard(context, "Hibernate", "images/hibernate-logo.png",
                    javaTopics),
                reusableCard(context, "SpringBoot", "images/spring-logo.png",
                    dartTopics),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Databases-",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reusableCard(
                    context, "MySQL", "images/mysql-img.png", javaTopics),
                reusableCard(
                    context, "Oracle", "images/oracle.png", dartTopics),
                reusableCard(
                    context, "MongoDB", "images/mongodb.png", javaTopics),
                reusableCard(context, "Maria", "images/maria.png", dartTopics),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Tools-",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reusableCard(
                    context, "VS Code", "images/vs-logo.png", dartTopics),
                reusableCard(
                    context, "Eclipse", "images/eclipse.png", javaTopics),
                reusableCard(context, "Git", "images/git-img.png", dartTopics),
                reusableCard(
                    context, "GitHub", "images/github.png", javaTopics),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
