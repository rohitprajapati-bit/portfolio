import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_coloumn.dart';


import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child:const Row(
        children: [
       
          SocialMediaIconColumn()
        ],
      ),
    );
  }
}
