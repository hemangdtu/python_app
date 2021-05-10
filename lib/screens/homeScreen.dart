import 'package:flutter/material.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/models/widgetDirectory.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> sectionLists = [];
    List<Widget> tutorialList = [];
    for (int i = 0; i < sectionNames.length; i++) {
      sectionLists.add(
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
          child: new Text(
            sectionNames[i],
            style: TextStyle(
              fontSize: 30,
              fontFamily: "SF-Pro-Text-Bold",
            ),
          ),
        ),
      );
      tutorialList = [];
      for (int j = 0; j < tutorialTile[sectionNames[i]].length; j++) {
        tutorialList.add(ListElement(
          image_location: tutorialTileImage[sectionNames[i]],
          image_caption: tutorialTile[sectionNames[i]][j],
        ));
      }
      sectionLists.add(HorizontalList(
        list_data: tutorialList,
      ));
      sectionLists.add(Padding(
        padding: const EdgeInsets.only(left: 80, top: 15, bottom: 5, right: 80),
        child: Divider(
          thickness: 4,
        ),
      ));
    }
    return Scaffold(
      body: Container(
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
        child: new ListView(children: sectionLists),
      ),
    );
  }
}