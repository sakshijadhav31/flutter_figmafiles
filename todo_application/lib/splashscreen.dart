import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        width: 600,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("shape.png"))),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "undraw_done_checking_re_6vyx 1 (1).png"))),
            )
          ],
        ),
      ),
    );
  }
}
