import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task-6"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                // color: Colors.amber,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV6wbWcULf3UBhFZ03Z8WAbSgKQu7yAezVsQ&usqp=CAU",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 300,
                  width: 300,
                  // color: Colors.blue,
                  child: Image.network(
                    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202209/Sundar_Pichai_2_1200x768.jpeg?VersionId=vhFWdWCb1X2NwwVnK4S_Ilb0.qPUei5T",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 300,
                  width: 300,
                  // color: Color.fromARGB(255, 255, 7, 7),
                  child: Image.network(
                    "https://pbs.twimg.com/profile_images/828000453136875522/93iQx_Gs_400x400.jpg",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 300,
                  width: 300,
                  // color: Color.fromARGB(255, 33, 243, 117),
                  child: Image.network(
                    "https://www.financialexpress.com/wp-content/uploads/2019/09/Ritesh-Agarwal-s.jpg",
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
