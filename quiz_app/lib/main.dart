import 'package:flutter/material.dart';
import 'package:quiz_app/questionsScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuestionsScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins', // Apply Poppins font family globally
      ),
    );
  }
}
