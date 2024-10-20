import 'package:flutter/material.dart';

class MyPortfolioText extends StatefulWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  _MyPortfolioTextState createState() => _MyPortfolioTextState();
}

class _MyPortfolioTextState extends State<MyPortfolioText> {

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // First Text Animation
        SizedBox(height: 10),

        Text(
          'I am Rohit',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
