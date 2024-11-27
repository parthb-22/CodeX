import 'package:demo_codex/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            // color: Colors.amber,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(150)),
                color: Colors.amber),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150, left: 50),
                  child: Text("Welcome"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 20),
                  child: Text("Please sign in to continue"),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            width: 200,
            height: 30,
            child: Text(
              "Mobile no. or email",
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),
          Container(
            width: 200,
            height: 30,
            child: Text("Password", style: TextStyle(color: Colors.white)),
            decoration: BoxDecoration(color: Colors.blueGrey),
            margin: EdgeInsets.only(bottom: 50, top: 20),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
