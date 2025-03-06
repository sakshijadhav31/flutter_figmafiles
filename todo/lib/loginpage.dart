import 'package:flutter/material.dart';
import 'package:todo/dashbord.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({
    super.key,
  });

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    String? username;
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();

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
              Text(
                "Welcome back",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/undraw_back_to_School_inwc 1.png"))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                // color: Colors.red,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      labelText: "Enter Your Eamil",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                // color: Colors.red,
                child: TextField(
                  controller: passcontroller,
                  decoration: InputDecoration(
                      labelText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: InkWell(
                    child: Text(
                  "Forget Password?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue.shade200),
                )),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade400,
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        )),
                    onPressed: () {
                      StepState() {
                        username = emailcontroller.text;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    homepageusername: "${username}",
                                  )));
                    },
                    child: Text(
                      "Login",
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ?",
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue.shade400),
                  ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
