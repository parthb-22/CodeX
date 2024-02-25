import 'package:carousel_slider/carousel_slider.dart';
import 'package:codex_app_topics/Dart/dartScreen.dart';
import 'package:codex_app_topics/Java/javaScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Languages Section:
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: const Text("Languages:",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900))),
              Container(
                  child: CarouselSlider(
                      items: [
                    Column(children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JavaScreen()));
                          },
                        ),
                        height: 120,
                        width: 120,
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 9, 9, 9),
                                offset: Offset(10, 10),
                                blurRadius: 10)
                          ],
                          image: DecorationImage(
                              image: AssetImage("images/java-14-logo.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        child: const Text(
                          "Java",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/Dart-logo.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Dart",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/Python-logo.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Python",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/js-logo.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "JavaScript",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                  ],
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          viewportFraction: 0.6))),

              // Frameworks Section:
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  child: const Text("Frameworks:",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900))),
              Container(
                  child: CarouselSlider(
                      items: [
                    Column(children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JavaScreen()));
                          },
                        ),
                        height: 120,
                        width: 120,
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 9, 9, 9),
                                offset: Offset(10, 10),
                                blurRadius: 10)
                          ],
                          image: DecorationImage(
                              image: AssetImage("images/flutter-logo.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        child: const Text(
                          "Flutter",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/react-logo.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "ReactJS",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/hibernate-logo.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Hibernate",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/spring-logo.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "SpringBoot",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                  ],
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          viewportFraction: 0.6))),

              // Databases Section:
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  child: const Text("Databases:",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900))),
              Container(
                  child: CarouselSlider(
                      items: [
                    Column(children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JavaScreen()));
                          },
                        ),
                        height: 120,
                        width: 120,
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 9, 9, 9),
                                offset: Offset(10, 10),
                                blurRadius: 10)
                          ],
                          image: DecorationImage(
                              image: AssetImage("images/mysql-img.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        child: const Text(
                          "MySQL",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/mongodb.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "MongoDB",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/maria.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "MariaDB",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/oracle.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Oracle",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                  ],
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          viewportFraction: 0.6))),

              // Tools Section:
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  child: const Text("Tools:",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900))),
              Container(
                  child: CarouselSlider(
                      items: [
                    Column(children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JavaScreen()));
                          },
                        ),
                        height: 120,
                        width: 120,
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 9, 9, 9),
                                offset: Offset(10, 10),
                                blurRadius: 10)
                          ],
                          image: DecorationImage(
                              image: AssetImage("images/vs-logo.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        child: const Text(
                          "VS Code",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/git-img.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Git",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/github.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "GitHub",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/postman.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Postman",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DartScreen()));
                            },
                          ),
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  offset: Offset(10, 10),
                                  blurRadius: 10)
                            ],
                            image: DecorationImage(
                                image: AssetImage("images/eclipse.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 5),
                          child: const Text(
                            "Eclipse",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ),
                  ],
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          viewportFraction: 0.6))),
            ]),
          )),
    );
  }
}
