class Project {
  final String name;
  final String description;
  // final String image;
  final String link;
  Project(this.name, this.description, this.link);
}

List<Project> projectList = [
  //Extract Text from Image
  Project(
    'Extract Text from Image',
    'A Flutter app that allows users to extract text from images using Google ML Kit, upload the image to Firebase Storage, and save records in Firestore Cloud. The app also includes a payment page for adding additional details.',
     // 'assets/images/coffee.png',
    '',
  ),

  Project(
    'NCERT Class 12 App',
    'Developed and published a comprehensive mobile application on the Play Store featuring all NCERT Class 12 books.Integrated features such as PDF download, share options, dark mode/light mode support, and an add-to-favorites functionality.',
    // 'assets/images/coffee.png',
    'https://play.google.com/store/apps/details?id=com.avtechky.ncert_12_class',
  ),
  Project(
    'E-Commerce-Application',
    'A Flutter-based e-commerce application that uses REST API for user authentication, displaying products, product details, and adding items to the cart. The app is designed for selling tech products like laptops and phones, providing a smooth and responsive user experience.',
    // 'assets/images/coffee.png',
    'https://github.com/rohitprajapati-bit/ShopHub-E-Commerce-Application-',
  ),
  Project(
    'Chat App',
    'A Flutter-based chat application that enables real-time messaging and user authentication using Firebase. This app allows users to chat securely, authenticate using email and password, and store messages in Firebase Firestore.',
    // 'assets/images/coffee.png',
    'https://github.com/rohitprajapati-bit/Chat-App',
  ),
  Project(
    'ToDos_App',
    'A Flutter-based task management application that allows users to add tasks, view them on a calendar, set due dates, edit tasks, mark them as completed, and delete tasks.',
    // 'assets/images/coffee.png',
    'https://github.com/rohitprajapati-bit/ToDos-app',
  ),
  Project(
    'TechStore-App',
    'TechStoreApp is a sleek and user-friendly e-commerce application built using Flutter. It specializes in showcasing and selling the latest laptops and phones. The app offers a seamless shopping experience with features like product listings, detailed descriptions, user reviews, and a secure checkout process.',
    // 'assets/images/coffee.png',
    'https://github.com/rohitprajapati-bit/TechStore-App',
  ),
  Project(
    'Weather-App',
    'Weather Now is a sleek and modern weather application developed using Flutter. The intuitive user interface is designed with Flutter powerful widgets, ensuring a smooth and responsive experience across all devices.!',
    // 'assets/images/car.png',
    'https://github.com/rohitprajapati-bit/Weather-App',
  ),
  Project(
      'Calculator-App',
      "This is a simple and intuitive calculator app built using Flutter It performs basic arithmetic operations like addition, subtraction, multiplication, and division with a clean and modern user interface.",
      // 'assets/images/alarm.jpg',
      'https://github.com/rohitprajapati-bit/Calculator-App'),
  Project(
      'Currency-Converter',
      ' Real-time currency conversion.User-friendly interface with a clean and responsive design.Supports multiple currencies.Lightweight and easy to integrate into any web project..',
      // 'assets/images/cui.png',
      'https://github.com/rohitprajapati-bit/Currency-Converter'),
  Project(
      'Rock-Paper-Scissors',
      'Rock-Paper-Scissors is a simple yet entertaining game built using JavaScript, HTML, and CSS. This game allows players to test their luck and strategy against the computer in the classic game of Rock, Paper, Scissors.',
      // 'assets/images/player.png',
      'https://github.com/rohitprajapati-bit/Rock-Paper-Scissors'),
  Project(
      'Tic-Tac-Toe',
      'Tic-Tac-Toe is a classic two-player game built using JavaScript, HTML, and CSS. This game provides a simple yet engaging experience for players to enjoy the timeless game of Xs and Os..',
      // 'assets/images/recipe.png',
      'https://github.com/rohitprajapati-bit/Tic-Tac-Toe'),
  Project(
      'Memory-Magic',
      'This is a fun and interactive memory match game built using HTML, CSS, and JavaScript. Test your memory skills by matching pairs of cards with identical images. Flip the cards to reveal the images and find all matching pairs to win the game!!.',
      // 'assets/images/task.png',
      'https://github.com/rohitprajapati-bit/Memory-Magic'),
  Project(
      'Travel-Tourism-Management-System',
      'A robust platform for managing travel and tourism services, featuring booking, payment processing, and reporting tools. Ideal for travel agencies seeking efficient solutions..',
      // 'assets/images/chat.png',
      'https://github.com/rohitprajapati-bit/Travel-Tourism-Management-System'),
];
