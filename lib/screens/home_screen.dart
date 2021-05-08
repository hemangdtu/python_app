import 'package:flutter/material.dart';
import 'package:python_app/screens/home_screen_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Colors.blue[100],
              // Colors.blue[300],

              Color(0xFF7E9BE0),
              //Color(0xFF1b1e44),
              Color(0xFF2E8BC0),
              // DARK THEME
              // Color(0xFF1b1e44),
              // Color(0xFF2E8BC0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        child: new ListView(
          children: <Widget>[
            // Introduction and Setup
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
              child: new Text(
                "Introduction and Setup",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "Python Introduction",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Python Features",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Python Applications",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Python Installation",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Python Basics
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Python Basics",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "Hello, World!",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Variables",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Keywords",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Identifiers",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Literals",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Operators",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Comments",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Input and Output",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Conditional Statements
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Conditional Statements",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "if statement",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "if else statement",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "else if statement",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Nested if",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Iterative Statement
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Iterative Statements",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "for loop",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "while loop",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "break statement",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "continue statement",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "pass statement",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Working With Datatypes
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Working with Datatypes",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "Python Strings",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "More about Strings",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Lists",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Tuples",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Dictionaries",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Functions
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Functions",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "Functions in Python",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Modules
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Modules and Packages",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "Modules in Python",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "math Module",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "random Module",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Packages in Python",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "os Package",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "numpy",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "matplotlib",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // OOPs
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Object Oriented Programming",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "OOPs in Python",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Python Object",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Constructors",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Inheritance",
                ),
                ListElement(
                  image_location: "a",
                  image_caption: "Polymorphism",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),

            // Exception Handling
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
              child: new Text(
                "Exception Handling",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ),
            HorizontalList(
              list_data: <Widget>[
                ListElement(
                  image_location: "a",
                  image_caption: "Exception Handling",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, bottom: 5, right: 80),
              child: Divider(
                thickness: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
