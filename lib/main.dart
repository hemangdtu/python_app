import 'package:flutter/material.dart';
import 'package:python_app/screens/landingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Working With Smile: Python App',
      home: SafeArea(
        child: LandingPage(),
      ),
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
