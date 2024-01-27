import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  bool fav = false;
  bool save = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 228, 64, 95),
          title: Text("Instagram",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  print("Like Button");
                },
                icon: Icon(Icons.favorite_outline)),
            IconButton(
                onPressed: () {
                  print("Message Button");
                },
                icon: Icon(Icons.message))
          ],
        ),
        body: SizedBox(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "images/parth-post.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("parth_2202",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 210,
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {
                          print("more options");
                        },
                        icon: Icon(Icons.more_vert)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                width: 500,
                child: Image.asset(
                  "images/parth-post.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          fav = !fav;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: fav
                          ? Colors.red
                          : const Color.fromARGB(255, 118, 118, 118),
                    ),
                    IconButton(
                        onPressed: () {
                          print("comment");
                        },
                        icon: Icon(Icons.chat_bubble_outline)),
                    IconButton(
                        onPressed: () {
                          print("forward");
                        },
                        icon: Icon(Icons.send_rounded)),
                    SizedBox(
                      width: 220,
                    ),
                    IconButton(
                      onPressed: () {
                        save = !save;
                      },
                      icon: Icon(Icons.bookmark_border),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.network(
                      "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=600",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("nature_click",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 210,
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {
                          print("more options");
                        },
                        icon: Icon(Icons.more_vert)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                width: 500,
                child: Image.network(
                  "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=600",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          fav = !fav;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: fav
                          ? Colors.red
                          : const Color.fromARGB(255, 118, 118, 118),
                    ),
                    IconButton(
                        onPressed: () {
                          print("comment");
                        },
                        icon: Icon(Icons.chat_bubble_outline)),
                    IconButton(
                        onPressed: () {
                          print("forward");
                        },
                        icon: Icon(Icons.send_rounded)),
                    SizedBox(
                      width: 220,
                    ),
                    IconButton(
                        onPressed: () {
                          print("saved");
                        },
                        icon: Icon(Icons.bookmark_border))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.network(
                      "https://images.pexels.com/photos/3729464/pexels-photo-3729464.jpeg?auto=compress&cs=tinysrgb&w=600",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("supercars",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 210,
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {
                          print("more options");
                        },
                        icon: Icon(Icons.more_vert)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                width: 500,
                child: Image.network(
                  "https://images.pexels.com/photos/3729464/pexels-photo-3729464.jpeg?auto=compress&cs=tinysrgb&w=600",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          fav = !fav;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: fav
                          ? Colors.red
                          : const Color.fromARGB(255, 118, 118, 118),
                    ),
                    IconButton(
                        onPressed: () {
                          print("comment");
                        },
                        icon: Icon(Icons.chat_bubble_outline)),
                    IconButton(
                        onPressed: () {
                          print("forward");
                        },
                        icon: Icon(Icons.send_rounded)),
                    SizedBox(
                      width: 220,
                    ),
                    IconButton(
                        onPressed: () {
                          print("saved");
                        },
                        icon: Icon(Icons.bookmark_border))
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
