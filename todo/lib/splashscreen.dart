import 'package:flutter/material.dart';
import 'package:todo/loginpage.dart';

class StartingTodo extends StatelessWidget {
  const StartingTodo({super.key});

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
              backgroundColor: Colors.blue.shade50,
            ),
          ),
          Positioned(
            left: -40,
            top: -100,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue.shade50,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 400,
                  height: 300,
                  // child: Image.file(File("D:\Anuja Flutter\demo\TOdo\todoapp\lib\images")),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/undraw_done_checking_re_6vyx 1.png"))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Gets things with TODs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade400,
                        fixedSize: Size.fromWidth(300),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
