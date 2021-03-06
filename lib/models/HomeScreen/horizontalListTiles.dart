import 'package:flutter/material.dart';
import 'package:python_app/models/HomeScreen/tutorialScreen.dart';

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
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TutorialScreen(
              tutorialTitle: image_caption,
            );
          }));
        },
      ),
    );
  }
}
