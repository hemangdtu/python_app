import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExamplesNew extends StatelessWidget {
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
          Colors.blue[100],
          Colors.blue[300],
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        tileMode: TileMode.clamp,
      ),
    ),
    child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Hello, World!'),
          trailing: Icon(Icons.play_circle_filled),
          onTap: _launchURL1,
        ),
        ListTile(
          title: Text('Add Two Numbers'),
          trailing: Icon(Icons.play_circle_filled),
          onTap: _launchURL2,
        ),
        ListTile(
          title: Text('Square Root'),
          trailing: Icon(Icons.play_circle_filled),
          onTap: _launchURL3,
        ),
        ListTile(
          title: Text('Area of Triangle'),
          trailing: Icon(Icons.play_circle_filled),
          onTap: _launchURL4,
        ),
        ListTile(
          title: Text('Swap Two Variables'),
          trailing: Icon(Icons.play_circle_filled),
          onTap: _launchURL5,
        ),
        ListTile(
          title: Text('Find Roots of Quadratic Equations'),
          trailing: Icon(Icons.play_circle_filled),
          onTap: _launchURL6,
        ),
      ],
    ),
  );
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
