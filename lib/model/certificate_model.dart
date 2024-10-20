class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Development',
    organization: 'Xzect Labs Private Limited',
    date: 'Dec 2023',
    skills: 'Flutter . iOS Development . Android Development',
    credential:
        'https://drive.google.com/file/d/1Cc2zqVl_uus8Dld-92QJ-336JcojEGqT/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Web development',
    organization: 'Encryptix',
    date: 'Sep 2023 - Oct 2023',
    skills: 'HTML5 , Css , JavaScript',
    credential:
        'https://drive.google.com/file/d/1rOImtlr8gVyGsnttthKOTYFWI1ZcUE8u/view?usp=sharing',
  ),
];
