import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ucourse_app/common/widgets/app_shadow.dart';

import '../../common/widgets/text_widget.dart';

Widget appOnboardingPage( PageController controller,
    {required String imagePath, String title="empty", String title2="", index=0}) {
  return  Column(children: [
    Lottie.asset(
      imagePath,
      fit: BoxFit.fitWidth,
      repeat: true,
      width: 500,
      height:350,
    ),
    Container(
        margin: EdgeInsets.only(top: 15),
        child:text24Normal(text: title, color: Colors.deepPurple)
    ),
    Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 30, right: 30),
      child: text16Normal(text: title2),
    ),
    _nextButton(index, controller)
  ]);
}

Widget _nextButton(int index, PageController controller){
  return GestureDetector(
    onTap: (){
      if(index < 3){
        controller.animateToPage(index, duration: const Duration(milliseconds: 300)
            ,curve: Curves.easeInOut);
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100,left: 25, right: 25),
      decoration: appBoxShadow(color: Colors.deepPurple),
      child: Center(child: text16Normal(text: index < 3 ? "Tiếp theo" : "Bắt đầu", color: Colors.white)),
    ),
  );
}