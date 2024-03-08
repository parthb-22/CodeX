import 'package:codex_app_production/courseDetail/coursecontent.dart';
import 'package:codex_app_production/courseDetail/jfslist.dart';
import 'package:codex_app_production/courseDetail/mernlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  String? name;
  HomePage({super.key, this.name});

  @override
  State<HomePage> createState() => _HomePageState(name);
}

class _HomePageState extends State<HomePage> {
  String? name;
  _HomePageState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 315,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 55, 149, 0.6705882352941176),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(180))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage("images/person.png")),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Hi, Shubham",
                          style: GoogleFonts.jost(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Hope You are Fine",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Courses For You",
                  style: GoogleFonts.anekTamil(
                      fontWeight: FontWeight.w500, fontSize: 20),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CourseContent(contentData: jfsList),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      height: 201,
                      width: 183,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Java Full Stack",
                              style: GoogleFonts.anekTamil(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset("images/fsd.png"),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(93, 108, 244, 0.67),
                            Color.fromRGBO(210, 21, 33, 0.667)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseContent(
                              contentData: mernList,
                            ),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      height: 201,
                      width: 183,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "MERN Stack",
                              style: GoogleFonts.anekTamil(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset("images/mern.png"),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(244, 132, 132, 1),
                            Color.fromRGBO(153, 4, 4, 1)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Upcoming Courses",
                  style: GoogleFonts.anekTamil(
                      fontSize: 20, fontWeight: FontWeight.w500),
                )),
            Container(
              height: 157,
              width: 353,
              margin: EdgeInsets.only(left: 15, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "9th March 2024",
                          style: GoogleFonts.anekTamil(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 80, top: 20),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              onPressed: () {},
                              child: Text(
                                "Join Demo",
                                style: GoogleFonts.anekTamil(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              )))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 12),
                    child: Text(
                      "10 am - 12 am",
                      style: GoogleFonts.anekTamil(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, top: 20),
                    child: Text(
                      "Flutter App Developmet",
                      style: GoogleFonts.anekTamil(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(244, 132, 132, 1),
                    Color.fromRGBO(153, 4, 4, 1)
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
