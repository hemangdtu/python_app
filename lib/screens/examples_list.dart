import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/meta/hyperlinks.dart';
import 'package:python_app/models/widgetDirectory.dart';
import 'package:python_app/screens/exampleContentPage.dart';

class ExamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      padding: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: exampleCategories.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text(
                exampleCategories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ExampleContentPage();
              }),
            );
          },
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
    // return _myListView(context);
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
