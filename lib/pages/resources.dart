import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _resourcesList(context);
  }
}

Widget _resourcesList(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(30.0),
    child: GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        MyMenu(
          title: "Book 1",
          icon: Icons.local_library,
          warna: Colors.cyan,
          link: _launchURLB1,
        ),
        MyMenu(
          title: "Book 2",
          icon: Icons.local_library,
          warna: Colors.cyan,
          link: _launchURLB2,
        ),
        MyMenu(
          title: "Book 3",
          icon: Icons.local_library,
          warna: Colors.cyan,
          link: _launchURLB3,
        ),
        MyMenu(
          title: "Book 4",
          icon: Icons.local_library,
          warna: Colors.cyan,
          link: _launchURLB4,
        ),
        MyMenu(
          title: "Book 5",
          icon: Icons.local_library,
          warna: Colors.cyan,
          link: _launchURLB5,
        ),
        MyMenu(
          title: "Book 6",
          icon: Icons.bookmark_border,
          warna: Colors.cyan,
          link: _launchURLB6,
        ),
      ],
    ),
  );
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna, this.link});

  final String title;
  final IconData icon;
  final MaterialColor warna;
  final Function link;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: link,
        splashColor: Colors.blueAccent,
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
                  fontSize: 17.0,
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