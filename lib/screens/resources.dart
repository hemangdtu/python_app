import 'package:flutter/material.dart';
import 'package:python_app/meta/constants.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/meta/hyperlinks.dart';

class ResourceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> resourceTile = [];
    for (int i = 0; i < resourceCaption.length; i++) {
      resourceTile.add(ResourceTile(
        title: resourceCaption[i],
        icon: resourceTileInfo[resourceCaption[i]]["icon"],
        warna: resourceTileInfo[resourceCaption[i]]["color"],
        link: resourceTileInfo[resourceCaption[i]]["function"],
      ));
    }
    return Container(
      decoration: gradientSet,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 15,
              bottom: 10,
              right: 20.0,
            ),
            child: Text(
              "Worksheets",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Card(
              elevation: 5,
              color: Colors.lightBlue[50],
              shadowColor: Colors.green[700],
              child: ListTile(
                title: Text(
                  "Try Python Worksheets",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                onTap: ResourceLinks.worksheets,
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 15,
              bottom: 10,
              right: 20.0,
            ),
            child: Text(
              "Notes",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Card(
              elevation: 5,
              color: Colors.lightBlue[50],
              shadowColor: Colors.green[700],
              child: ListTile(
                title: Text(
                  "Refer to Python Notes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                onTap: ResourceLinks.notes,
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 15,
              bottom: 10,
              right: 20.0,
            ),
            child: Text(
              "Books",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "SF-Pro-Text-Bold",
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              crossAxisCount: 3,
              children: resourceTile,
            ),
          ),
        ],
      ),
    );
  }
}

class ResourceTile extends StatelessWidget {
  ResourceTile({this.title, this.icon, this.warna, this.link});

  final String title;
  final IconData icon;
  final MaterialColor warna;
  final Function link;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      //margin: EdgeInsets.all(8.0),
      color: Colors.lightBlue[50],
      shadowColor: Colors.green[700],
      child: InkWell(
        onTap: link,
        splashColor: Colors.lightBlue[100],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                // size: 75.0,
                color: warna,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
