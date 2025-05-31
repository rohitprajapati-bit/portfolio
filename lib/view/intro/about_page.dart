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
            child: const Responsive(
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
          const SizedBox(
            height: 15,
          ),
          const Text(
            "A dedicated Flutter developer with 1 year of hands-on experience in developing cross-platform mobile applications using Flutter and Dart. Proven ability to build clean, efficient, and responsive UIs integrated with Firebase, RESTful APIs, and modern state management techniques like Provider and Bloc. I follow best practices in app architecture (MVVM), ensuring maintainability and performance. Passionate about continuous learning, I bring a problem-solving mindset and a strong eye for UI/UX to every project. Looking to contribute to a forward-thinking team where quality code and user experience matter.",
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          const SizedBox(
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
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Bacholer Of Science - (Information Technology), 2024\nMumbai University, Maharashtra',
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          const SizedBox(
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
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Experience Flutter Developer',
            style: TextStyle(color: Colors.white, height: 1.5, fontSize: 18),
          ),
          const Text(
            'KraftNexus TECH LLP (October 2024 – Present)',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 12),
          ),
          const SizedBox(
            height: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "At KraftNexus TECH LLP, I have contributed to the development of multiple Flutter-based mobile applications with a focus on user experience, performance, and functionality.\nOne of my key projects was FitFusion, a fitness membership app where I implemented secure ID/password authentication with client-side validation to protect user data.\nDuring member admission, user details are captured through a form, and a confirmation message — containing a unique barcode — is automatically sent to the member's\nWhatsApp via the backend system. This barcode is then used during check-ins by scanning it at the gym’s entry point. Upon scanning, the app fetches and displays complete \nmember information including active plans, expiry dates, and other membership details, ensuring seamless attendance tracking and management.",
                style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'I also worked on DuesBuddy, a payment and user management app, where I developed modules to register and search members, assign custom plans, and monitor dues. I built an OCR-based payment proof uploader to extract transaction details from screenshots or receipts, reducing manual input by over 80%. Additionally, I designed user-friendly dashboards to give quick access to payment histories, member profiles, and timely due-date reminders.',
                style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Currently, I am developing CrewTrainX, an advanced training management app tailored for airline pilots. The app allows pilots to track and receive reminders about upcoming training renewals and provides the administrative team with a centralized dashboard to view and manage training compliance across the fleet. The focus is on ensuring timely certifications and streamlining communication between pilots and management.',
                style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
              )
            ],
          ),
          const SizedBox(
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
          const SizedBox(
            height: 20,
          ),
          const MySKills(),
          const Knowledges(),
        ],
      ),
    );
  }
}
