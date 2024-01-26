import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task-4"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 200,
                  width: 200,
                  // color: Color.fromARGB(255, 255, 234, 0),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/C5103AQFd4Bs3ZQLfgw/profile-displayphoto-shrink_800_800/0/1531933810210?e=2147483647&v=beta&t=fcNFsiKwQ4yL2cIoZZmIP5_qjMP0LDQ5gq2nPfmqXas",
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
                    "https://cio.eletsonline.com/wp-content/uploads/2019/06/Azim-Premji.jpg",
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
