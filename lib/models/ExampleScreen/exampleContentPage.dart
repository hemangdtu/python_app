import 'package:flutter/material.dart';
import 'package:python_app/models/ExampleScreen/markdownModel.dart';
import 'package:python_app/meta/programs/programExport.dart';

class ExampleContentPage extends StatelessWidget {
  final String domain;
  ExampleContentPage({this.domain});

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
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.code)),
                Tab(icon: Icon(Icons.menu_book_sharp)),
              ],
            ),
          ),
          body: TabBarView(
            children: exampleContent(domain),
          ),
        ),
      ),
    );
  }
}

List<Widget> exampleContent(String topic) {
  Map<String, List<Widget>> contents = {
    "Hello, World!": [
      markdownContent(helloWorldMarkdown),
      markdownContent(helloWorldExplain),
    ],
    "Add Two Numbers": [
      markdownContent(sumOfNumbersMarkdown),
      markdownContent(sumOfNumbersExplain),
    ],
    "Square Root": [
      markdownContent(sumOfNumbersMarkdown),
      markdownContent(sumOfNumbersMarkdown),
    ],
    "Area of Triangle": [
      markdownContent(sumOfNumbersMarkdown),
      markdownContent(sumOfNumbersMarkdown),
    ],
    "Swap Two Variables": [
      markdownContent(sumOfNumbersMarkdown),
      markdownContent(sumOfNumbersMarkdown),
    ],
    "Find Roots of a Quadratic Equation": [
      markdownContent(sumOfNumbersMarkdown),
      markdownContent(sumOfNumbersMarkdown),
    ],
  };
  return contents[topic] ??
      [
        Center(child: Text("Content to be added soon!")),
        Center(child: Text("Content to be added soon!")),
      ];
}
