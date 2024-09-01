import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(
          icons: Icon(
            Icons.phone,
            color: Colors.grey,
            size: 18,
          ),
          text: '+91 9321462658',
        ),
        AreaInfoText(
            icons: Icon(
              Icons.email_rounded,
              color: Colors.grey,
              size: 18,
            ),
            text: 'rohitprajapati09190@gmail.com'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
