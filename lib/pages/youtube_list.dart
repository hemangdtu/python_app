import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Colors.blue[100],
            // Colors.blue[300],
            Color(0xFF7E9BE0),
            //Color(0xFF1b1e44),
            Color(0xFF2E8BC0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListView(
        children: <Widget>[
          ListElement(
            title: "Overview of Python Programming",
            link: _launchURL1,
          ),
          ListElement(
            title: "Datatypes in Python Programming",
            link: _launchURL2,
          ),
          ListElement(
            title: "Creating Variables in Python Programming",
            link: _launchURL3,
          ),
          ListElement(
            title: "print( ) in Python Programming",
            link: _launchURL4,
          ),
          ListElement(
            title: "input( ) in Python Programming",
            link: _launchURL5,
          ),
          ListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
        ],
      ));
}

class ListElement extends StatelessWidget {
  ListElement({this.title, this.link});

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
      subtitle: Text("YouTube Link"),
    );
  }
}

_launchURL1() async {
  const url = 'https://www.youtube.com/watch?v=0t0AS1abKkw';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
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

_launchURL3() async {
  const url = 'https://www.youtube.com/watch?v=R0oscluaoDU';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://www.youtube.com/watch?v=T2G9LnAM43Q';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'https://www.youtube.com/watch?v=YQIlC5u0sk8';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL6() async {
  const url = 'https://www.youtube.com/watch?v=6OJqKLF2EP8';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}
