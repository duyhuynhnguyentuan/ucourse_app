import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:ucourse_app/common/widgets/text_widget.dart';
import 'package:ucourse_app/pages/welcome/widgets.dart';


final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.only(top: 30),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    onPageChanged: (value){
                      print(value);
                      ref.read(indexProvider.notifier).state = value;
                    },
                    controller: _controller,
                    //adjust scrollDirection to change page scroll direction
                    // scrollDirection: Axis.vertical,
                    children: [
                      //first onboarding Page
                      appOnboardingPage(_controller,
                          imagePath: "assets/animations/animation2.json",
                          title: "Bắt đầu hành trình học tập",
                          title2:
                              "Khám phá các khóa học hấp dẫn, đa dạng, dễ tương tác",
                          index: 1),
                      //second Onboarding page
                      appOnboardingPage(_controller,
                          imagePath: "assets/animations/animation3.json",
                          title: "Khám phá các chủ đề đa dạng",
                          title2:
                              "Tìm kiếm các khóa học phù hợp với sở thích của bạn",
                          index: 2),
                      //third one
                      appOnboardingPage(_controller,
                          imagePath: "assets/animations/animation1.json",
                          title: "Tương tác với giảng viên",
                          title2:
                              "Dễ dàng trao đổi với giảng viên của bạn qua tin nhắn trực tiếp",
                          index: 3)
                    ],
                  ),
                  Positioned(
                    child: DotsIndicator(
                      position: index,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(36.0,8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                    ),
                    bottom: 50,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
