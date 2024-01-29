import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodeGen Technologies"),
        actions: [
          IconButton(
              onPressed: () {
                print("message button");
              },
              icon: Icon(Icons.message))
        ],
      ),
    );
  }
}
