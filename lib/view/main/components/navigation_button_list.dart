import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view/main/components/navigation_button.dart';

class NavigationButtonList extends StatefulWidget {
  const NavigationButtonList({super.key});

  @override
  State<NavigationButtonList> createState() => _NavigationButtonListState();
}

class _NavigationButtonListState extends State<NavigationButtonList> {
  int activeIndex = 0;

  void changePage(int index) {
    setState(() {
      activeIndex = index;
    });

    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              buildButton(0, 'Home'),
              buildButton(1, 'About Us'),
              buildButton(2, 'Projects'),
              buildButton(3, 'Certifications'),
            ],
          ),
        );
      },
    );
  }

  Widget buildButton(int index, String text) {
    final isActive = index == activeIndex;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        NavigationTextButton(
          onTap: () => changePage(index),
          text: text,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 2,
          width: 30,
          // margin: const EdgeInsets.only(top: 1),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(1),
          ),
        )
      ],
    );
  }
}
