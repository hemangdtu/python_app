import 'package:flutter/material.dart';
import 'package:python_app/meta/constants.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/models/ExampleScreen/exampleContentPage.dart';

Widget exampleProgramList(BuildContext context, int index) {
  return Container(
    decoration: gradientSet,
    child: ListView(
      children: [
        for (int i = 0;
            i < exampleTileStrings[exampleCategories[index]].length;
            i++)
          ExampleListElement(
            title: exampleTileStrings[exampleCategories[index]][i],
            index: i + 1,
          ),
      ],
    ),
  );
}

// Example List Tile
class ExampleListElement extends StatelessWidget {
  ExampleListElement({this.title, this.index});

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 6,
      ),
      elevation: 5,
      color: cardColor,
      shadowColor: shadowColor,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        leading: CircleAvatar(
          child: Text("$index"),
        ),
        trailing: Icon(Icons.auto_stories),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ExampleContentPage(
              domain: title,
            );
          }));
        },
      ),
    );
  }
}
