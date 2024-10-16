import 'package:flutter/material.dart';

class MyPortfolioText extends StatefulWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  _MyPortfolioTextState createState() => _MyPortfolioTextState();
}

class _MyPortfolioTextState extends State<MyPortfolioText> {
  // bool _showName = false; // To control when to show the name animation

  // @override
  // void initState() {
  //   super.initState();
  //   // Delay the display of the name animation after the first text completes
  //   Future.delayed(const Duration(milliseconds: 1000), () {
  //     setState(() {
  //       _showName = true; // Show the name animation
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // First Text Animation
        const SizedBox(height: 10),
        // AnimatedTextKit(
        //   // repeatForever: true,
        //   isRepeatingAnimation: true,
        //   animatedTexts: [
        //     TypewriterAnimatedText(
        //       "Hey! I' am...",
        //       textStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
        //             color: Colors.white,
        //             fontWeight: FontWeight.w700,
        //           ),
        //       speed: const Duration(milliseconds: 100),
        //     ),
        //   ],
        //   totalRepeatCount: 1,
        //   pause: const Duration(milliseconds: 500),
        //   displayFullTextOnTap: true,
        //   stopPauseOnTap: true,
        // ), // Space between the texts
        // Conditional rendering of the second text animation
        // if (_showName)
        // AnimatedTextKit(
        //   animatedTexts: [
        //     TypewriterAnimatedText(
        //       'i am Rohit',
        //       textStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
        //             color: Colors.white,
        //             fontWeight: FontWeight.w900,
        //           ),
        //       speed: const Duration(milliseconds: 100),
        //     ),
        //   ],
        //   totalRepeatCount: 1,
        //   pause: const Duration(milliseconds: 500),
        //   displayFullTextOnTap: true,
        //   stopPauseOnTap: true,
        // ),
        Text(
          'I am Rohit',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
