import 'package:flutter/material.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/screens/exampleContentPage.dart';

Widget exampleProgramList(BuildContext context, int index) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF7E9BE0),
          Color(0xFF2E8BC0),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        tileMode: TileMode.clamp,
      ),
    ),
    child: ListView(
      children: [
        for (int i = 0;
            i < exampleTileStrings[exampleCategories[index]].length;
            i++)
          ExampleListElement(
            title: exampleTileStrings[exampleCategories[index]][i],
            // link: exampleCategoriesInfo[exampleCategories[index]]["link"],
          ),
      ],
    ),
  );
}

// Example List Tile
class ExampleListElement extends StatelessWidget {
  ExampleListElement({this.title, this.link});

  final String title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(Icons.book),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ExampleContentPage(
            domain: title,
          );
        }));
      },
    );
  }
}
