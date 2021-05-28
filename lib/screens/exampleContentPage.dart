import 'package:flutter/material.dart';
import 'package:python_app/meta/programs/sumOfNumbers.dart';
import 'package:python_app/models/ExampleScreen/markdownModel.dart';

class ExampleContentPage extends StatelessWidget {
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
            children: [
              markdownContent("print(\"Hello, World!\")"),
              markdownContent(sumOfNumbersMarkdown),
            ],
          ),
        ),
      ),
    );
  }
}
