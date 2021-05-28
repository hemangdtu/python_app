import 'package:flutter/material.dart';
import 'package:python_app/meta/constants.dart';
import 'package:python_app/meta/data.dart';
import 'package:url_launcher/url_launcher.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: resourceTile,
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
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 5,
      margin: EdgeInsets.all(8.0),
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
                size: 75.0,
                color: warna,
              ),
              Text(
                title,
                style: new TextStyle(
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

_launchURLB1() async {
  const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLB2() async {
  const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLB3() async {
  const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLB4() async {
  const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLB5() async {
  const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLB6() async {
  const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}
