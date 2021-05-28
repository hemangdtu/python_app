import 'package:flutter/material.dart';
import 'package:python_app/models/ExampleScreen/markdownModel.dart';

class TutorialScreen extends StatelessWidget {
  final String tutorialTitle;
  TutorialScreen({this.tutorialTitle});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xFF2C2D95),
            title: Text("Working With Smile: Python"),
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          body: Container(
            child: markdownContent(tutorialContent(tutorialTitle)),
          ),
        ),
      ),
    );
  }
}

String tutorialContent(String tutorialTitle) {
  Map<String, String> content = {
    "Python Introduction": '''Intro''',
    "Python Features": '''Features''',
    "Python Applications": '''Applications''',
    "Python Installation": '''Installation''',
    "Hello, World!": '''Hello,
    World!''',
    "Variables": '''Variables''',
    "Keywords": '''Keywords''',
    "Identifiers": '''Identifiers''',
    "Literals": '''Literals''',
    "Operators": '''Operators''',
    "Comments": '''Comments''',
    "Input and Output": '''Input
    and
    Output''',
    "if statement": "",
    "if else statement": "",
    "else if statement": "",
    "Nested if": "",
    "for loop": "",
    "while loop": "",
    "break statement": "",
    "continue statement": "",
    "pass statement": "",
    "Python Strings": "",
    "More about Strings": "",
    "Lists": "",
    "Tuples": "",
    "Dictionaries": "",
    "Functions in Python": "",
    "Modules in Python": "",
    "math Module": "",
    "random Module": "",
    "Packages in Python": "",
    "os Package": "",
    "numpy": "",
    "matplotlib": "",
    "OOPs in Python": "",
    "Python Object": "",
    "Constructors": "",
    "Inheritance": "",
    "Polymorphism": "",
    "Exception Handling": "",
  };
  return content[tutorialTitle] ?? "Content to be added soon!";
}
