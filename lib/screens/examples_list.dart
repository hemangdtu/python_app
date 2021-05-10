import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:python_app/models/wavy_image_header.dart';

class ExamplesPage extends StatelessWidget {
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
          Color(0xFF7E9BE0),
          Color(0xFF2E8BC0),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        tileMode: TileMode.clamp,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(6.0),
      child: ListView(
        children: <Widget>[
          ExampleListElement(
            title: 'Hello, World!',
            link: _launchURL1,
          ),
          ExampleListElement(
            title: 'Add Two Numbers',
            link: _launchURL2,
          ),
          ExampleListElement(
            title: 'Square Root',
            link: _launchURL3,
          ),
          ExampleListElement(
            title: 'Area of Triangle',
            link: _launchURL4,
          ),
          ExampleListElement(
            title: 'Swap Two Variables',
            link: _launchURL5,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          ExampleListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
        ],
      ),
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
      trailing: Icon(Icons.play_circle_filled),
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
