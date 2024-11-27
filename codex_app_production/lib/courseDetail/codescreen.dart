import 'package:codex_app_production/courseDetail/coursecontent.dart';
import 'package:codex_app_production/courseDetail/jfslist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class CodeScreen extends StatefulWidget {
  Map? topicData;

  CodeScreen({super.key, this.topicData});

  @override
  State<CodeScreen> createState() => _CodeScreenState(topicData);
}

class _CodeScreenState extends State<CodeScreen> {
  Map? topicData;
  _CodeScreenState(this.topicData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9B89CE),
      // appBar: AppBar(
      //   title: Text("Code Screen"),
      // ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CourseContent(contentData: jfsList),
                                  ));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Java",
                          style: GoogleFonts.jost(
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Full Stack",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 156,
                    width: 156,
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset("images/java.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(13, 18, 164, 1), // #C2FFC5
                          Color.fromRGBO(45, 22, 191, 0.831), // #3E23E8
                          Color.fromRGBO(0, 0, 0, 1),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // height: 594,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "${topicData?["title"]}",
                        style: GoogleFonts.anekTamil(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 1,
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 30),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 12),
                          child: Text(
                            "what is Java",
                            style: GoogleFonts.anekTamil(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      margin: EdgeInsets.only(left: 12, top: 15),
                      child: Text(
                        "lorem ipsum lorem ipsum lorem ipsum lorem ipsum",
                        style: GoogleFonts.anekTamil(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 30),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 12),
                          child: Text(
                            " Java is Platform Independent",
                            style: GoogleFonts.anekTamil(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      margin: EdgeInsets.only(left: 12, top: 15),
                      child: Text(
                        "lorem ipsum lorem ipsum lorem ipsum lorem ipsum",
                        style: GoogleFonts.anekTamil(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        width: 300,
                        margin: EdgeInsets.only(top: 20),
                        child: ListView.builder(
                          itemCount: topicData?["codes"].length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Code ${index + 1} :",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 5, top: 10, bottom: 10),
                                    width: 300,
                                    child: HighlightView(
                                      "${topicData?["codes"][index]}",
                                      languageId: "java",
                                      theme: githubDarkDimmedTheme,
                                    )),
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
