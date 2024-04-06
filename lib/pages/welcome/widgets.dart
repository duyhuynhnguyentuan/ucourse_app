import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../../common/widgets/text_widget.dart';

Widget appOnboardingPage({required String imagePath, String title="empty", String title2=""}) {
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
        child:text24Normal(text: title)
    ),
    Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 30, right: 30),
      child: text16Normal(text: title2),
    )
  ]);
}