import 'package:codex_app_main/TopicLists/darttopics.dart';
import 'package:codex_app_main/TopicScreen/topicscreen.dart';
import 'package:flutter/material.dart';
import 'package:codex_app_main/TopicLists/javatopics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget reusableCard(
      BuildContext context, String name, String imageURL, List topicList) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TopicScreen(
                      techName: name,
                      topics: topicList,
                    )));
      },
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageURL), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 9, 9, 9),
                      offset: Offset(10, 10),
                      blurRadius: 10)
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 5),
            child: Text(
              "$name",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Languages Section:
                Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text("Languages:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusableCard(
                          context, "Dart", "images/Dart-logo.png", dartList),
                      reusableCard(
                          context, "Java", "images/java-14-logo.png", javaList),
                      reusableCard(context, "Python", "images/Python-logo.png",
                          dartList),
                      reusableCard(
                          context, "JavaScript", "images/js-logo.png", javaList)
                    ],
                  ),
                ),

                // Frameworks Section:
                Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text("Frameworks:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusableCard(context, "Flutter",
                          "images/flutter-logo.png", dartList),
                      reusableCard(context, "ReactJS", "images/react-logo.png",
                          javaList),
                      reusableCard(context, "Hibernate",
                          "images/hibernate-logo.png", dartList),
                      reusableCard(context, "SpringBoot",
                          "images/spring-logo.png", javaList)
                    ],
                  ),
                ),

                // Databases Section:
                Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text("Databases:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusableCard(
                          context, "MySQL", "images/mysql-img.png", dartList),
                      reusableCard(
                          context, "MongoDB", "images/mongodb.png", javaList),
                      reusableCard(
                          context, "MariaDB", "images/maria.png", dartList),
                      reusableCard(
                          context, "Oracle", "images/oracle.png", javaList)
                    ],
                  ),
                ),

                // Tools Section:
                Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text("Tools:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusableCard(
                          context, "VS Code", "images/vs-logo.png", javaList),
                      reusableCard(
                          context, "Git", "images/git-img.png", dartList),
                      reusableCard(
                          context, "GitHub", "images/github.png", javaList),
                      reusableCard(
                          context, "Postman", "images/postman.png", dartList),
                      reusableCard(
                          context, "Eclipse", "images/eclipse.png", javaList),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
