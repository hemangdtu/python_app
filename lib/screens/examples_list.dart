import 'package:flutter/material.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/meta/hyperlinks.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:python_app/models/wavy_image_header.dart';

class ExamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
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

class ExampleListElement extends StatelessWidget {
  ExampleListElement({this.title, this.link});

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
      trailing: Icon(Icons.book),
      onTap: link,
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
