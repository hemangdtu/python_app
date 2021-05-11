import 'package:flutter/material.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/meta/hyperlinks.dart';
import 'package:python_app/screens/exampleContentPage.dart';

// Home screen Horizontal Bar
class HorizontalList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<Widget> list_data;

  // ignore: non_constant_identifier_names
  HorizontalList({this.list_data});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: list_data,
      ),
    );
  }
}

// Home Screen List Tile
class ListElement extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;

  // ignore: non_constant_identifier_names
  ListElement({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 200,
          child: ListTile(
            title: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image_location,
                scale: 1,
              ),
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  image_caption,
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: "Calibre-Semibold",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget exampleProgramList(BuildContext context, int index) {
  List<Widget> exampleList = [];
  for (int i = 0; i < exampleTileStrings.length; i++) {
    exampleList.add(
      ExampleListElement(
        title: exampleTileStrings[i],
        link: exampleCategoriesInfo[exampleCategories[index]]["link"],
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
          return ExampleContentPage();
        }));
      },
    );
  }
}

// Video List Tile
class VideoListElement extends StatelessWidget {
  VideoListElement({this.title, this.link});

  final String title;
  final Function link;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(Icons.play_circle_filled),
      onTap: link,
    );
  }
}
