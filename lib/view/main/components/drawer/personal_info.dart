import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
 void _sendEmail() async {
    final Uri emailLaunchUri =
        Uri(scheme: 'mailto', path: ' rohitprajapati09190@gmail.com');
    launchUrl(emailLaunchUri);
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const AreaInfoText(
          icons: Icon(
            Icons.phone,
            color: Colors.grey,
            size: 18,
          ),
          text: '+91 9321462658',
        ),
        InkWell(
          onTap:  _sendEmail,
          child: const AreaInfoText(
              icons: Icon(
                Icons.email_rounded,
                color: Colors.grey,
                size: 18,
              ),
              text: 'rohitprajapati09190@gmail.com'),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
