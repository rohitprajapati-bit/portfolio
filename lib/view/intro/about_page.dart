import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/main/components/drawer/knowledges.dart';
import 'package:flutter_portfolio/view/main/components/drawer/my_skill.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'About', title: 'us'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isExtraLargeScreen(context)
                    ? size.width * 0.12
                    : 30,
                vertical: 20),
            child: Responsive(
                desktop: Summery(),
                extraLargeScreen: Summery(),
                largeMobile: Summery(),
                mobile: Summery(),
                tablet: Summery()),
          ))
        ],
      ),
    );
  }
}

class Summery extends StatelessWidget {
  const Summery({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Summery",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'An enthusiastic Flutter developer with 1 year of experience in crafting high-quality mobile applications for Android and iOS platforms. Proficient in Dart, with a deep understanding of Java, HTML, CSS, and JavaScript, contributing to a versatile skill set. Known for a keen desire to learn and quickly adapt to new technologies, continuously seeking opportunities to enhance technical expertise and deliver innovative solutions.',
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Education",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Bacholer Of Science - (Information Technology), 2024\nMumbai University, Maharashtra',
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Experience",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.white, height: 1.5, fontSize: 18),
          ),
          Text(
            'Infocare Web technology (Jan 2024 - June 2024)',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 12),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Actively engaged in enhancing the user interface and user experience (UI/UX) of an application. My efforts are concentrated on identifying areas for improvement and implementing modifications to create a more intuitive and user- friendly design. This involves analyzing existing design elements, gathering feedback, and applying best practices to ensure the application meets modern UI/UX standards. Through this process, I am developing my skills in design thinking, attention to detail, and user-centered design, whilecontributing to the overall quality of the application.',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Skills",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MySKills(),
          Knowledges(),
        ],
      ),
    );
  }
}
