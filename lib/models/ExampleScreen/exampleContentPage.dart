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
      markdownContent(helloWorldCode),
      markdownContent(helloWorldExplain),
    ],
    "Add Two Numbers": [
      markdownContent(sumOfNumbersCode),
      markdownContent(sumOfNumbersExplain),
    ],
    "Calculate Simple Interest": [
      markdownContent(simpleInterestCode),
      markdownContent(simpleInterestExplain),
    ],
    "Calculate Square Root of a Number": [
      markdownContent(sumOfNumbersCode),
      markdownContent(sumOfNumbersCode),
    ],
    "Perform Arithmetic Operations": [
      markdownContent(areaOfTriangleCode),
      markdownContent(areaOfTriangleExplain),
    ],
    "Area of Triangle": [
      markdownContent(areaOfTriangleCode),
      markdownContent(areaOfTriangleExplain),
    ],
    "Area of Circle": [
      markdownContent(sumOfNumbersCode),
      markdownContent(sumOfNumbersCode),
    ],
    "Find Roots of a Quadratic Equation": [
      markdownContent(sumOfNumbersCode),
      markdownContent(sumOfNumbersCode),
    ],
    "Swap Two Variables": [
      markdownContent(sumOfNumbersCode),
      markdownContent(sumOfNumbersCode),
    ],
    "Convert Celsius to Fahrenheit": [
      markdownContent(sumOfNumbersCode),
      markdownContent(sumOfNumbersCode),
    ],
  };
  return contents[topic] ??
      [
        Center(child: Text("Content to be added soon!")),
        Center(child: Text("Content to be added soon!")),
      ];
}
