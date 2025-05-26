import 'package:flutter/material.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.text, required this.icons});
  final String text;
  final Icon icons;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const  Spacer(),
          Text(
            text,
            style:const TextStyle(
                decoration: TextDecoration.underline, color: Colors.grey),
          ),
         const SizedBox(
            width: 5,
          ),
          icons,
        ],
      ),
    );
  }
}
