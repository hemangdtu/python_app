import 'package:flutter/material.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/meta/hyperlinks.dart';
import 'package:python_app/models/widgetDirectory.dart';

class ExamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  List<Widget> exampleList = [];
  for (int i = 0; i < exampleTileStrings.length; i++) {
    exampleList.add(
      ExampleListElement(
        title: exampleTileStrings[i],
        link: ExamplesLinks.linkMap[exampleTileStrings[i]],
      ),
    );
  }
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
      children: exampleList,
    ),
  );
}
