import 'package:codex_app_production/courseDetail/codescreen.dart';
import 'package:codex_app_production/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseContent extends StatefulWidget {
  List? contentData;

  CourseContent({super.key, this.contentData});

  @override
  State<CourseContent> createState() => _CourseContentState(contentData);
}

class _CourseContentState extends State<CourseContent> {
  List? contentData;
  _CourseContentState(this.contentData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF9B89CE),
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
                                    builder: (context) => HomePage(),
                                  ));
                            },
                            icon: const Icon(
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
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset("images/java.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
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
                padding: const EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                child: ListView.builder(
                  itemCount: contentData?.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 110,
                      width: 300,
                      margin: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(100),
                              right: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 1,
                                color: Colors.grey)
                          ]),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20, top: 20),
                              height: 70,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(100))),
                          InkWell(
                            onTap: () {
                              print("clicked");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CodeScreen(
                                        topicData: contentData?[index]),
                                  ));
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "${contentData?[index]["title"]}",
                                  style: GoogleFonts.anekTamil(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black),
                                    )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
