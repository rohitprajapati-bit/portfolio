import 'package:flutter/material.dart';


class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          // 'Experienced in end-to-end mobile app\ndevelopment — from ideation and UI/UX design\nto coding, testing, and deployment on app stores${Responsive.isLargeMobile(context) ? '\n' : ''}and Play Store.',
          "Flutter Developer | Building High-Performance Mobile Apps\nwith Clean Code and Scalable Architecture",

          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
