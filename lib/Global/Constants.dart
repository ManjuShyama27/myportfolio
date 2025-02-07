import 'package:flutter/material.dart';

class AppConstants {
  static List<String> navTitleNames = [
    'Home',
    'About Me',
    'My Skills',
    'My Projects',
    'Testimonials',
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

  List<Map> workstepList() => [
        {
          "img": 'assets/images/ap.png',
          "name": 'Asian Paints',
          "title": 'Systems Executive II',
          "period": 'Jan 2023 - Sep 2024'
        },
        {
          "img": 'assets/images/codemischief.png',
          "name": 'CodeMischief',
          "title": 'Junior Software Developer',
          "period": 'Oct 2021 - Feb 2022'
        },
        {
          "img": 'assets/images/codemischief.png',
          "name": 'Collab Lab',
          "title": 'Flutter Developer Intern',
          "period": 'Jun 2021 - Jul 2021'
        },
        {
          "img": 'assets/images/codemischief.png',
          "name": 'Aim2Excel',
          "title": 'Flutter Developer Intern',
          "period": 'Jun 2021'
        },
        {
          "img": 'assets/images/codemischief.png',
          "name": 'PayServices',
          "title": 'Flutter Developer Intern',
          "period": 'May 2021'
        }
      ];

  static List<Map> skillItems = [
    {"img": "assets/images/flutter.png", "title": "Flutter"},
    {"img": "assets/images/dart.png", "title": "Dart"},
    {"img": "assets/images/firebase.png", "title": "Firebase"},
    {"img": "assets/images/apigee.png", "title": "Apigee"},
    {"img": "assets/images/openshift.png", "title": "Openshift"},
    {"img": "assets/images/", "title": "Visual Studio Code"},
    {"img": "assets/images/github.png", "title": "GitHub"},
    {"img": "assets/images/gitlab.png", "title": "GitLab"},
    {"img": "assets/images/jira.png", "title": "Jira"},
    {"img": "assets/images/postman.png", "title": "Postman"},
    {"img": "assets/images/", "title": "Swagger"},
    {"img": "assets/images/cloudinary.png", "title": "Cloudinary"},
  ];
}
