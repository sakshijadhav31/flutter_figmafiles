import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String? homepageusername;
  String? text;
  bool iscomplte;
  HomePage({this.homepageusername, this.iscomplte = true, this.text});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  List<HomePage> ls = []; // Move list outside build() to persist state
  TextEditingController taskcontroller = TextEditingController();
  Color bgcolor = Colors.white; // Persist controller

  @override
  void dispose() {
    taskcontroller.dispose(); // Properly dispose of the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -100,
            top: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: -40,
            top: -100,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
            ),
          ),
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.green.shade400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.amber,
                          backgroundImage: AssetImage("assets/Ellipse 3.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "${widget.homepageusername}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 10),
                child: Text(
                  "Good Afternoon",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.blue.shade50,
                backgroundImage: AssetImage("assets/clock.png"),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Task List",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(244, 255, 250, 250),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 8.0,
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: taskcontroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffEDD7D7),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (taskcontroller.text.isNotEmpty) {
                                  setState(() {
                                    ls.add(HomePage(text: taskcontroller.text));
                                    taskcontroller
                                        .clear(); // Clear input after adding task
                                  });
                                }
                              },
                              icon: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        // Use Expanded to avoid overflow
                        child: ListView.builder(
                          itemCount: ls.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          bgcolor = Color(0xff50C2C9);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.square_outlined,
                                      )),
                                  Text(
                                    "${ls[index].text}",
                                    style: TextStyle(
                                      decoration: !ls[index].iscomplte
                                          ? TextDecoration.lineThrough
                                          : TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                setState(() {
                                  ls[index].iscomplte = !ls[index].iscomplte;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
