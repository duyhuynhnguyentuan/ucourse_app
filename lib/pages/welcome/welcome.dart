import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ucourse_app/common/widgets/text_widget.dart';
import 'package:ucourse_app/pages/welcome/widgets.dart';

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
            //first onboarding Page
           appOnboardingPage(imagePath: "assets/animations/animation2.json", title: "Bắt đầu hành trình học tập", title2: "Khám phá các khóa học hấp dẫn, đa dạng, dễ tương tác"),
            //second Onboarding page
            appOnboardingPage(imagePath: "assets/animations/animation3.json", title: "Khám phá các chủ đề đa dạng", title2: "Tìm kiếm các khóa học phù hợp với sở thích của bạn" ),
            //third one
            appOnboardingPage(imagePath: "assets/animations/animation1.json", title: "Tương tác với giảng viên", title2: "Dễ dàng trao đổi với giảng viên của bạn")

          ],
        ),
        ],
      )
    );
  }
}
