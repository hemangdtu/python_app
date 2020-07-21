import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/pages/home_screen_data.dart';

class HrList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
            child: new Text(
              "Module 1",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 80, top: 15, bottom: 5, right: 80),
            child: Divider(
              thickness: 4,
            ),
          ),
          //.............. New Module Introduction ............
          new Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
            child: new Text(
              "Module 2",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 80, top: 15, bottom: 5, right: 80),
            child: Divider(
              thickness: 4,
            ),
          ),
          //.............. New Module Introduction ............
          new Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
            child: new Text(
              "Module 3",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 80, top: 15, bottom: 5, right: 80),
            child: Divider(
              thickness: 4,
            ),
          ),
          //.............. New Module Introduction ............
          new Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
            child: new Text(
              "Module 4",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 80, top: 15, bottom: 5, right: 80),
            child: Divider(
              thickness: 4,
            ),
          ),
          //.............. New Module Introduction ............
          new Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 10),
            child: new Text(
              "Module 5",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 80, top: 15, bottom: 5, right: 80),
            child: Divider(
              thickness: 4,
            ),
          ),
        ],
      ),
    );
  }
}
