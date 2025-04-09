import 'package:flutter/material.dart';

class AppConstants {
  static List<String> navTitleNames = [
    'Home',
    'About Me',
    'My Skills',
    'My Work',
    'Recommendations',
    'Contact Me'
  ];
  static List<IconData> navTitleIcons = [
    Icons.home,
    Icons.person,
    Icons.handyman,
    Icons.apps,
    Icons.note_rounded,
    Icons.contact_page
  ];

  static int kMaxDesktopWidth = 600;
  static String phone = "919987496921";
  static String email = "manjushyamasinghania27@gmail.com";

  static List<Map> recommendations = [
    {
      "message":
          '"Manjushyama was an integral part of our frontend development team, and her contributions were truly commendable.She took Figma designs and translated them into well-structured, high-performance Flutter code, ensuring a seamless user experience for the mobile app.She designed and implemented the UI and successfully integrated the frontend with our Python backend"',
      "by": '- Prashant Adiyogi\n(Product Manager at Codemischief)',
      "link": 'https://www.linkedin.com/recs/received/?senderId=padiyodi',
    },
    {
      "message":
          '"I recommend Manju as a talented Front-End Developer. On the Asian Paints project, she showed her ability to understand business needs and translate them into solutions. Manju is not only technically skilled but also creative and consumer-focused, often exceeding expectations. Her innovative thinking and dedication make her a valuable team member."',
      "by": '- Girish Kulkarni\n(Product Owner at VML)',
      "link":
          'https://www.linkedin.com/recs/received/?senderId=girish-kulkarni-iimj&lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base%3BK4f7mZhvQDCg9cZVjO3b4A%3D%3D',
    }
  ];

  static List<Map> videos = [
    {
      "title": 'Flutter Made Easy:Introduction and Setup for beginners',
      "img": 'assets/images/setup.jpg',
      "link": 'https://youtu.be/NtlqoEmPG5M?si=Y8rzCghXv5YC3JZE',
    },
    {
      "title": 'Upload Your Flutter Project to Github!',
      "img": 'assets/images/fluttertogithub.png',
      "link": 'https://youtu.be/MCrKkGIU5EM?si=ESBfyxQXexvukGeQ',
    },
    {
      "title": 'Flutter Basics for Beginners',
      "img": 'assets/images/basics.png',
      "link": 'https://youtu.be/NtlqoEmPG5M?si=Y8rzCghXv5YC3JZE',
    }
  ];

  static List<Map> workstepList = [
    {
      "img": 'assets/images/ap.png',
      "name": 'Asian Paints',
      "title": 'Systems Executive II',
      "period": 'Jan 2023 - Sep 2024',
      "description":
          "Launched a responsive cross-platform application using Flutter, BLoC state management, and clean architecture increasing user engagement"
    },
    {
      "img": 'assets/images/codemischief.png',
      "name": 'CodeMischief',
      "title": 'Junior Software Developer',
      "period": 'Oct 2021 - Feb 2022',
      "description":
          "Designed interactive front-end interfaces and integrated API s for a healthcare application"
    },
    {
      "img": 'assets/images/collablab.png',
      "name": 'Collab Lab',
      "title": 'Flutter Developer Intern',
      "period": 'Jun 2021 - Jul 2021',
      "description":
          "Built gradient analysis components such as bars, gauges,and pie charts using flutter"
    },
    {
      "img": 'assets/images/aim2excel.png',
      "name": 'Aim2Excel',
      "title": 'Flutter Developer Intern',
      "period": 'Jun 2021',
      "description":
          "Created engaging front-end interfaces for a learning management system"
    },
    {
      "img": 'assets/images/payservices.png',
      "name": 'PayServices',
      "title": 'Flutter Developer Intern',
      "period": 'May 2021',
      "description":
          "Configured Firebase authentication for a service-oriented application"
    }
  ];

  static List<Map> eduStepList = [
    {
      "img": 'assets/images/siescoms.png',
      "name": 'SIES College of Management Studies',
      "title": 'Master of Computer Applications',
      "period": 'Sep 2021 - Jun 2023'
    },
    {
      "img": 'assets/images/sies.png',
      "name": 'SIES College of Arts,Science and Commerce',
      "title": 'Bachelor of Information Technology',
      "period": 'Jun 2018 - Jun 2021'
    },
    {
      "img": 'assets/images/somaiya.png',
      "name": 'KJ Somaiya College of Arts,Science and Commerce',
      "title": 'Higher Secondary Education(HSC)',
      "period": 'Jun 2016 - Jun 2018'
    },
    {
      "img": 'assets/images/lourdes.png',
      "name": 'Lourdes High School',
      "title": 'Secondary School Education(SSC)',
      "period": 'Jun 2016'
    },
  ];

  static List<Map> skillItems = [
    {"img": "assets/images/flutter.png", "title": "Flutter"},
    {"img": "assets/images/dart.png", "title": "Dart"},
    {"img": "assets/images/firebase.png", "title": "Firebase"},
    {"img": "assets/images/apigee.png", "title": "Apigee"},
    {"img": "assets/images/openshift.png", "title": "Openshift"},
    {"img": "assets/images/vscode.jpg", "title": "Visual Studio Code"},
    {"img": "assets/images/github.png", "title": "GitHub"},
    {"img": "assets/images/gitlab.png", "title": "GitLab"},
    {"img": "assets/images/jira.png", "title": "Jira"},
    {"img": "assets/images/postman.png", "title": "Postman"},
    {"img": "assets/images/swagger.png", "title": "Swagger"},
    {"img": "assets/images/cloudinary.png", "title": "Cloudinary"},
    {"img": "assets/images/android.png", "title": "Android Development"},
    {
      "img": "assets/images/crossplatform.png",
      "title": "Cross Platform Developemnt"
    },
    {"img": "assets/images/webdevelopment.png", "title": "Web Developemnt"},
  ];

  static List<Map> workItems = [
    {
      "img": "assets/images/bhscso.png",
      "title": "BHS CSO",
      "description":
          "Developed a responsive app using Flutter, BLoC, and Clean Architecture for a seamless user experience"
    },
    {
      "img": "assets/images/bhsdesigner.png",
      "title": "BHS Designer",
      "description":
          "Built a web application and deployed it on OpenShift, with reverse proxy configured via Apigee"
    },
    {
      "img": "assets/images/healo.png",
      "title": "Healo",
      "description":
          "Designed a healthcare app with Flutter and Figma, ensuring a user-friendly patient-doctor interface"
    },
    {
      "img": "assets/images/analytics.png",
      "title": "Analytics Screens",
      "description":
          "Built an interactive gradient-based analytics screen with radar, bar, and gauge charts."
    },
    {
      "img": "assets/images/lms.png",
      "title": "Learning Management System(LMS)",
      "description":
          "Designed frontend interfaces for teacher and student dashboards using Flutter"
    },
    {
      "img": "assets/images/pay.png",
      "title": "Pay Services",
      "description":
          "Engineered a client-user service app with Firebase authentication for secure logins"
    },
    {
      "img": "assets/images/movison.png",
      "title": "Movison",
      "description": "Designed frontend interfaces for book renting portal"
    },
  ];

  static List<Map> hobbyItems = [
    {
      "img": "assets/images/traveln.png",
      "title": "TRAVELN",
      "description":
          "Travel blog app where users can share and explore travel experiences (Tech Stack:Flutter, Firebase, Node.js, MongoDB, Heroku, Cloudinary)."
    },
    {
      "img": "assets/images/shopify.png",
      "title": "SHOPIFY",
      "description":
          "An e-commerce app with Firebase and a chatbot powered by Dialogflow for customer support"
    },
    {
      "img": "assets/images/chatable.png",
      "title": "CHATABLE",
      "description":
          "A real-time chat application using Flutter and Firebase for instant messaging"
    },
  ];

  static List<String> socialMediaLinks = [
    'https://github.com/ManjuShyama27',
    'https://www.linkedin.com/in/manjushyama-singhania-174a16211',
    'https://www.youtube.com/@FlutterCoding101',
    'https://www.instagram.com/fluttercoding101'
  ];
}
