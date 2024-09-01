import 'package:flutter/material.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.text, required Icon this.icons});
  // final String title;
  final String text;
  final Icon icons;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Text(
            text,
            style: TextStyle(
                decoration: TextDecoration.underline, color: Colors.grey),
          ),
          SizedBox(
            width: 5,
          ),
          icons,
        ],
      ),
    );
  }
}
