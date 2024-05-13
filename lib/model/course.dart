import 'package:flutter/material.dart' show Color;

class Course {
  final String title, description, iconSrc, codRef;
  final Color color;

  Course({
    required this.title,
    required this.codRef,
    this.description = 'Build and animate an iOS app from scratch',
    this.iconSrc = "assets/icons/ios.svg",
    this.color = const Color(0xFF3657BB),
  });
}

final List<Course> property1 = [
  Course(
    title: "Propiedad 1",
    codRef: "1234-434"
  ),
];

final List<Course> property2 = [
  Course(
    title: "Propiedad 2",
    iconSrc: "assets/icons/code.svg",
    codRef: '3445-433',
  ),
];

final List<Course> property3 = [
  Course(
    title: "Propiedad 3",
    iconSrc: "assets/icons/code.svg",
    codRef: '6454-453',
  ),
];

final List<Course> property4 = [
  Course(
    title: "Propiedad 4",
    iconSrc: "assets/icons/code.svg",
    codRef: '9804-055',
  ),
];

final List<Course> property5 = [
  Course(
    title: "Propiedad 5",
    iconSrc: "assets/icons/code.svg",
    codRef: '7654-346',
  ),
];

final List<Course> property6 = [
  Course(
    title: "Propiedad 6",
    iconSrc: "assets/icons/code.svg",
    codRef: '6472-209',
  ),
];

final List<Course> recentCourses = [
  Course(
    title: "La Mezquita",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
    codRef: '4635-742',
  ),
  Course(
    title: "El buen dormir",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
    codRef: '7436-634',
  ),
  Course(
    title: "Casa Balam",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
    codRef: '5365-532',
  ),
  Course(
    title: "Montejo",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
    codRef: '8765-654',
  ),
  Course(
    title: "Plaza Mirador",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
    codRef: '4025-320',
  ),
];

