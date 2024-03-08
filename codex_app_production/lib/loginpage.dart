import 'package:codex_app_production/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                height: 315,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(44, 55, 149, 0.67),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(180))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Text(
                        "Welcome",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 52, top: 20),
                      child: Text(
                        "Please sign in to continue",
                        style: GoogleFonts.quicksand(
                            fontSize: 18, color: Colors.white),
                      ),
                    )
                  ],
                )),
            Container(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 300,
                  child: TextField(
                      onChanged: (value) {
                        name = value;
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mobile no. or email",
                          hintStyle: GoogleFonts.anekTamil(
                              fontWeight: FontWeight.w400, fontSize: 15),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.close_rounded)))),
                ),
                Container(
                  width: 300,
                  child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          hintStyle: GoogleFonts.anekTamil(
                              fontWeight: FontWeight.w400, fontSize: 15),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_off)))),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 50),
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.anekTamil(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    )),
                Container(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(name: name),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.anekTamil(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF6371F2)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        "Dont have an account? ",
                        style: GoogleFonts.anekTamil(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.anekTamil(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFCA4A4A)),
                      ),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
