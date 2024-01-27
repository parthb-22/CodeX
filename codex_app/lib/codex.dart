import 'package:flutter/material.dart';

class CodeX extends StatefulWidget {
  const CodeX({super.key});

  @override
  State<CodeX> createState() => _CodeXState();
}

class _CodeXState extends State<CodeX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(164, 128, 47, 194),
        title: Text("CodeX",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(
            onPressed: () {
              print("Search Box");
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SizedBox(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Languages-",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child:
                        Image.asset("images/Dart-logo.png", fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/java-14-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/Python-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/js-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Frameworks-",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/flutter-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/react-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/spring-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/hibernate-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Tools-",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/vs-logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/eclipse.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/postman.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/git-img.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/github.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Databases-",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/mysql-img.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/mongodb.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/oracle.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(7)),
                    child: Image.asset(
                      "images/maria.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
