import 'package:awesome_portfolio/models/app_model.dart';
import 'package:awesome_portfolio/models/color_model.dart';
import 'package:awesome_portfolio/models/device_model.dart';
import 'package:awesome_portfolio/screen/miniProjects/education/education.dart';
import 'package:awesome_portfolio/screen/miniProjects/experience/experience.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/experience_model.dart';
import '../models/skill_model.dart';
import '../screen/miniProjects/about/about.dart';
import '../screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
    title: "About",
    color: Colors.white,
    icon: Icons.person,
    screen: const AboutMe(),
  ),
  AppModel(
    title: "Skills",
    color: Colors.white,
    icon: Icons.ac_unit_rounded,
    screen: const Skills(),
  ),
  AppModel(
    title: "Youtube",
    assetPath: "assets/icons/youtube.png",
    color: Colors.white,
    link: youtubeChannel,
  ),
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.png",
    color: Colors.white,
    link: linkedIn,
  ),
  AppModel(
      title: "Experience",
      color: Colors.white,
      icon: FontAwesomeIcons.idBadge,
      screen: const Experience()),
  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
  AppModel(
    title: "Github",
    assetPath: "assets/icons/github.png",
    color: Colors.white,
    link: github,
  ),
  AppModel(
    title: "Play Store",
    assetPath: "assets/icons/playstore.png",
    color: Colors.white,
    link: playApps,
  ),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Thu Duc, Viet Nam",
    title: 'Mobile Developer',
    company: 'Thu Duc College of Technology',
    startDate: 'June 2020',
    endDate: 'February 2024',
    bulletPoints: [
      "Currently in the final year of my college!",
    ],
  ),
  // JobExperience(
  //   color: Colors.blue,
  //   location: "Thu Duc, Viet Nam",
  //   title: 'Mobile Developer',
  //   company: 'Di4L (Remote)',
  //   startDate: 'June 2024',
  //   endDate: 'Present',
  //   bulletPoints: [
  //     'Learn to accumulate experience',
  //   ],
  // ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Ho Chi Minh, Viet Nam",
    title: 'Mobile Developer',
    company: 'Soft World Ltd',
    startDate: 'June 2023',
    endDate: 'August 2023',
    bulletPoints: [
      "Learn flutter about clean structures.",
      "Exposure to real projects (POS)",
    ],
  ),
  // Add more job experiences here...
  JobExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'Flutter Developer',
    company: 'Di4L',
    startDate: 'June 2024',
    endDate: 'Present',
    bulletPoints: [
      "Exposure to real projects (SOD multi-channel sales e-commerce application.",
      "Do the feature (Estimated Time of Arrival ).",
      "Fix bugs project .",
    ],
  ),
];

const String youtubeChannel =
    "https://www.youtube.com/channel/UCYKOOzZeVfppJXJVgtRSD_g";
const String linkedIn = "https://www.linkedin.com/in/tdk2610/";
const String github = "https://github.com/TranDangKhoaID";
const String email = "trankhoa26102002@gmail.com";
String introduction =
    "Welcome to my portfolio website, this website is highly inspired(almost copied) from Pawan Kumar.\n\nI am a new graduate of Thu Duc College of Technology.";
const String playApps =
    "https://play.google.com/store/apps/developer?id=Khoa+Tr%E1%BA%A7n+2610";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "GetX",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Vietnamese", colorS: Colors.red),
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];
