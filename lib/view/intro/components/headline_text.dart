import 'package:flutter/material.dart';

class MyPortfolioText extends StatefulWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  MyPortfolioTextState createState() => MyPortfolioTextState();
}

class MyPortfolioTextState extends State<MyPortfolioText> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey..',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
            ),
            Text(
              "I am Rohit",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
            ),
          ],
        )
      ],
    );
  }
}
