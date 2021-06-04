import 'package:flutter/material.dart';
import 'package:python_app/meta/hyperlinks.dart';

// List<String> videoTileStrings = [
//   "Overview of Python Programming",
//   "Datatypes in Python Programming",
//   "Creating Variables in Python Programming",
//   "print() in Python Programming",
//   "input() in Python Programming",
//   "Operators in Python Programming",
// ];

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
  },
  "Conditions and Loops": {
    "image": "assets/python_logo.png",
  },
  "Arrays": {
    "image": "assets/python_logo.png",
  },
  "Pattern Printing": {
    "image": "assets/python_logo.png",
  },
  "Lists": {
    "image": "assets/python_logo.png",
  },
  "Strings": {
    "image": "assets/python_logo.png",
  },
  "Sorting Algorithms": {
    "image": "assets/python_logo.png",
  },
  "Searching Algorithms": {
    "image": "assets/python_logo.png",
  },
};

Map<String, List<String>> exampleTileStrings = {
  "Basic Programs": [
    "Hello, World!",
    "Add Two Numbers",
    "Calculate Simple Intrest",
    "Calculate Square Root of a Number",
    "Perform Arithmetic Operations",
    "Area of Triangle",
    "Area of Circle",
    "Find Roots of a Quadratic Equation",
    "Swap Two Variables",
    "Convert Celsius to Fahrenheit",
  ],
  "Conditions and Loops": [
    "Check if a Number is Positive, Negative or Zero",
    "Check if a Number is Odd or Even",
    "Print nth Fibonacci Number",
    "Maximum of Three Numbers",
    "Calculate Sum of Squares of first n Natural Numbers",
    "Check for Leap Year",
    "Check for Armstrong Number",
    "Print Fibonacci Sequence",
    "Factorial of a Number",
    "Check Prime Numbers",
    "Display Multiplication Table",
  ],
  "Arrays": [
    "Print all Array Elements",
    "Find sum of Array Elements",
    "Find Larget element in Array",
    "Rotate an Array",
    "Reverse an Array",
    "Copy all Elements from One Array to Another Array",
    "Check if given Array is Monotonic",
    "Calculate Frequency of each Element in Array",
  ],
  "Pattern Printing": [
    "* \n* * \n* * * \n* * * *",
    "1 \n1 2 \n1 2 3 \n1 2 3 4",
    "1 \n2 2 \n3 3 3 \n4 4 4 4",
    "1 1 1 1 \n2 2 2 \n3 3 \n4",
    "   * \n  * * \n * * * \n* * * *",
    "A \nB B \nC C C \nD D D D",
    "5 4 3 2 1\n4 3 2 1\n3 2 1\n2 1\n1",
    "Floyd's Triangle",
    "Pascal's Triangle",
    "Diamond Shape",
    "Letter by Letter Print",
  ],
  "Lists": [
    "Interchange First and Last Element in a List",
    "Swap Two ELements in a List",
    "Calculate Length of a List",
    "Check if Element exists in List",
    "Clear a List",
    "Reverse a List",
    "Find sum of List Elements",
    "Find the Smallest and Largest Element in a List",
  ],
  "Strings": [
    "Print Last Word in a Sentence",
    "Calculate Length of a String",
    "Reverse a String",
    "Check Palindrome String",
    "Capitalize First and Last Character of each word",
    "Check if Substring is present in a given String",
  ],
  "Searching Algorithms": [
    "Linear Search",
    "Binary Search",
    "Jump Search",
  ],
  "Sorting Algorithms": [
    "Bubble Sort",
    "Selection Sort",
    "Insertion Sort",
    "Merge Sort",
    "Tim Sort",
    "Counting Sort",
    "Bucket Sort",
    "Shell Sort",
    "Radix Sort",
  ],
};

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
    "function": ResourceLinks.notes,
  },
  "Book 2": {
    "icon": Icons.local_library,
    "color": Colors.cyan,
    "function": ResourceLinks.worksheets,
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
