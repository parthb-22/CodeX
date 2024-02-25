import 'package:codex_app_topics/homePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 209, 209),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.cover),
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome to CodeX Technologies...",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(184, 2, 114, 2))),
                        fillColor: Color.fromARGB(255, 142, 170, 166),
                        filled: true,
                        hintText: "Username")),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(184, 2, 114, 2))),
                        fillColor: Color.fromARGB(255, 142, 170, 166),
                        filled: true,
                        hintText: "Password")),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    minimumSize: MaterialStatePropertyAll(Size(100, 40))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Forgot password?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/google.png"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/apple-logo.png"))),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}
