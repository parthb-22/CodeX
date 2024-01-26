import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task-3"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 200,
                // color: const Color.fromARGB(255, 0, 0, 0),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV6wbWcULf3UBhFZ03Z8WAbSgKQu7yAezVsQ&usqp=CAU",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 20,
            ),
            Container(
                height: 200,
                width: 200,
                // color: Color.fromARGB(255, 255, 0, 0),
                child: Image.network(
                  "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202209/Sundar_Pichai_2_1200x768.jpeg?VersionId=vhFWdWCb1X2NwwVnK4S_Ilb0.qPUei5T",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 20,
            ),
            Container(
                height: 200,
                width: 200,
                // color: Color.fromARGB(255, 255, 234, 0),
                child: Image.network(
                  "https://pbs.twimg.com/profile_images/828000453136875522/93iQx_Gs_400x400.jpg",
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
