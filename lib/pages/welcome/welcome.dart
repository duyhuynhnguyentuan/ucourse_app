import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
        PageView(
          //adjust scrollDirection to change page scroll direction
          // scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 345,
              height: 345,
              child: Lottie.asset(
                  "assets/animations/animation1.json",
                  repeat: true,
                  width: 150,
                  height:150,
              ),
            ),
            Container(
              width: 345,
              height: 345,
              child: Lottie.asset(
                "assets/animations/animation2.json",
                repeat: true,
                width: 200,
                height:200,
              ),
            ),
            Container(
              width: 345,
              height: 345,
              child: Lottie.asset(
                "assets/animations/animation3.json",
                repeat: true,
                width: 200,
                height:200,
              ),
            ),
          ],
        ),
        ],
      )
    );
  }
}
