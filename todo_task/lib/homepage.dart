import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> taskList = [];
  String taskData = '';

  void addTask() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            margin: EdgeInsets.all(15),
            child: Column(children: [
              TextFormField(
                initialValue: '',
                decoration: InputDecoration(label: Text("Add Task")),
                onChanged: (value) {
                  taskData = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      addData();
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Save"))
            ]),
          );
        });
  }

  void editTask(int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          width: 200,
          child: Column(
            children: [
              TextFormField(
                initialValue: taskList[index],
                onChanged: (value) {
                  taskList[index] = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: Text('save'))
            ],
          ),
        );
      },
    );
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
  }

  void addData() {
    taskList.add(taskData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // debugPrint("clicked");
              editTask(index);
            },
            child: Container(
              height: 40,
              color: Color.fromARGB(255, 208, 236, 123),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(taskList[index]),
                  ElevatedButton(
                    onPressed: () {
                      deleteTask(index);
                      setState(() {});
                    },
                    child: Icon(Icons.delete),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  )
                ],
              ),
              padding: EdgeInsets.only(left: 20, top: 5),
              margin: EdgeInsets.only(top: 10),
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            addTask();
          },
          child: Icon(Icons.playlist_add)),
    );
  }
}
