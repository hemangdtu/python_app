import 'package:flutter/material.dart';
import 'package:python_app/meta/hyperlinks.dart';
import 'package:python_app/screens/exampleContentPage.dart';

List<String> videoTileStrings = [
  "Overview of Python Programming",
  "Datatypes in Python Programming",
  "Creating Variables in Python Programming",
  "print() in Python Programming",
  "input() in Python Programming",
  "Operators in Python Programming",
];

List<String> exampleCategories = [
  "Basic Programs",
  "Conditions and Loops",
  "Arrays",
  "Pattern Printing",
  "Lists",
  "Strings",
  "Sorting Algorithms",
  "Searching Algorithms",
];

var exampleCategoriesInfo = {
  "Basic Programs": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Conditions and Loops": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Arrays": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Pattern Printing": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Lists": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Strings": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Sorting Algorithms": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
  "Searching Algorithms": {
    "image": "assets/python_logo.png",
    "link": "A",
  },
};

List<String> exampleTileStrings = [
  "Hello, World!",
  "Add Two Numbers",
  "Square Root",
  "Area of Triangle",
  "Swap Two Variables",
  "Find Roots of a Quadratic Equation",
  "Convert Kilometers into Miles",
  "Convert Celsius to Fahrenheit",
  "Check if a Number is Positive, Negative or Zero",
];

List<String> sectionNames = [
  "Introduction and Setup",
  "Python Basics",
  "Conditional Statements",
  "Iterative Statements",
  "Working with Datatypes",
  "Functions",
  "Modules and Packages",
  "Object Oriented Programming",
  "Exception Handling",
];

Map<String, List<String>> tutorialTile = {
  "Introduction and Setup": [
    "Python Introduction",
    "Python Features",
    "Python Applications",
    "Python Installation",
  ],
  "Python Basics": [
    "Hello, World!",
    "Variables",
    "Keywords",
    "Identifiers",
    "Literals",
    "Operators",
    "Comments",
    "Input and Output",
  ],
  "Conditional Statements": [
    "if statement",
    "if else statement",
    "else if statement",
    "Nested if",
  ],
  "Iterative Statements": [
    "for loop",
    "while loop",
    "break statement",
    "continue statement",
    "pass statement",
  ],
  "Working with Datatypes": [
    "Python Strings",
    "More about Strings",
    "Lists",
    "Tuples",
    "Dictionaries",
  ],
  "Functions": [
    "Functions in Python",
  ],
  "Modules and Packages": [
    "Modules in Python",
    "math Module",
    "random Module",
    "Packages in Python",
    "os Package",
    "numpy",
    "matplotlib",
  ],
  "Object Oriented Programming": [
    "OOPs in Python",
    "Python Object",
    "Constructors",
    "Inheritance",
    "Polymorphism",
  ],
  "Exception Handling": [
    "Exception Handling",
  ],
};

Map<String, String> tutorialTileImage = {
  "Introduction and Setup": "assets/PyLogo.jpeg",
  "Python Basics": "assets/PyLogo.jpeg",
  "Conditional Statements": "assets/PyLogo.jpeg",
  "Iterative Statements": "assets/PyLogo.jpeg",
  "Working with Datatypes": "assets/PyLogo.jpeg",
  "Functions": "assets/PyLogo.jpeg",
  "Modules and Packages": "assets/PyLogo.jpeg",
  "Object Oriented Programming": "assets/PyLogo.jpeg",
  "Exception Handling": "assets/PyLogo.jpeg",
};

List<String> resourceCaption = [
  "Book 1",
  "Book 2",
  "Book 3",
  "Book 4",
  "Book 5",
  "Book 6",
];

var resourceTileInfo = {
  "Book 1": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.resource1,
  },
  "Book 2": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.resource2,
  },
  "Book 3": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.resource3,
  },
  "Book 4": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.resource4,
  },
  "Book 5": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.resource5,
  },
  "Book 6": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.resource6,
  },
};
