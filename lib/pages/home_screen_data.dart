import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ModuleOne(
            image_location: "a",
            image_caption: "b",
          ),
          ModuleOne(
            image_location: "a",
            image_caption: "b",
          ),
          ModuleOne(
            image_location: "a",
            image_caption: "b",
          ),
          ModuleOne(
            image_location: "a",
            image_caption: "b",
          ),
          ModuleOne(
            image_location: "a",
            image_caption: "b",
          ),
          ModuleOne(
            image_location: "a",
            image_caption: "b",
          ),
        ],
      ),
    );
  }
}

class ModuleOne extends StatelessWidget {
  final String image_location;
  final String image_caption;

  ModuleOne({this.image_location, this.image_caption});
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
                "lib/assets/PyLogo.jpeg",
                scale: 1,
              ),
            ),
            // subtitle: Text(image_caption),
            // title: Icon(
            //   Icons.access_alarm,
            //   size: 90,
            // ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Introduction",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
