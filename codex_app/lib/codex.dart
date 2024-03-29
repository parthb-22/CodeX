import 'package:codex_app/topicscreen.dart';
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
        margin: EdgeInsets.only(left: 10, right: 10),
        // child: Image.asset(imageURL),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageURL), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.pink, offset: Offset(12, 15), blurRadius: 10)
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        // title: const Text("CodeX",
        //     style: TextStyle(
        //       fontSize: 25,
        //       fontWeight: FontWeight.bold,
        //     )),
        leading: Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.only(top: 10),
            height: 100,
            width: 100,
            child: Image.asset(
              "images/logo.png",
              fit: BoxFit.cover,
            )),
        title: Center(
            child: Text(
          "CodeX",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromARGB(255, 255, 255, 255)),
        )),
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
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       reusableCard("images/mysql-img.png"),
          //       reusableCard("images/oracle.png"),
          //       reusableCard("images/mongodb.png"),
          //       reusableCard("images/maria.png"),
          //     ],
          //   ),
          // ),
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
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       reusableCard("images/vs-logo.png"),
          //       reusableCard("images/eclipse.png"),
          //       reusableCard("images/git-img.png"),
          //       reusableCard("images/github.png"),
          //     ],
          //   ),
          // )
        ]),
      )),
    );
  }
}
