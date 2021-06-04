import 'package:flutter/material.dart';

Decoration gradientSet = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xFF7E9BE0),
      Color(0xFF2E8BC0),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    tileMode: TileMode.clamp,
  ),
);

Color navBarButtonBackgroundColor = Color(0xFF3538B5);
Color navBarBackgroundColor = Color(0xFF7E9BE0);
Color navBarColor = Color(0xFF2C2D95);

List<List<dynamic>> navBarOptions = [
  [Icons.ondemand_video, "YouTube Video Tutorials"],
  [Icons.code, "Examples"],
  [Icons.apps, "Notes and Tutorials"],
  [Icons.assignment, "Questions and Answers"],
  [Icons.book, "Resources"],
];

Color shadowColor = Colors.black87;
Color cardColor = Colors.lightBlue[50];
