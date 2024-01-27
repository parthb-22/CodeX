import 'package:flutter/material.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('$count'),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = count + 1;
                      });
                    },
                    child: Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    child: Text("reset"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
