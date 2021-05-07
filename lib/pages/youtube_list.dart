import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:python_app/content/wavy_image_header.dart';

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
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListView(
        children: <Widget>[
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(50),
          //   child: Container(
          //     color: Color(0xFF3538B5),
          //     child: ListTile(
          //       leading: Image.asset("lib/assets/yt_logo.png"),
          //       title: Center(
          //         child: Text(
          //           "Youtube Videos",
          //           style: TextStyle(
          //             fontFamily: "SF-Pro-Text-Regular",
          //             //fontWeight: FontWeight.bold,
          //             fontSize: 30,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          WavyHeaderImage(
            'lib/assets/yt_wallpaper.jpg',
            imgScale: 5,
          ),
          VideoListElement(
            title: "Overview of Python Programming",
            link: _launchURL1,
          ),
          VideoListElement(
            title: "Datatypes in Python Programming",
            link: _launchURL2,
          ),
          VideoListElement(
            title: "Creating Variables in Python Programming",
            link: _launchURL3,
          ),
          VideoListElement(
            title: "print( ) in Python Programming",
            link: _launchURL4,
          ),
          VideoListElement(
            title: "input( ) in Python Programming",
            link: _launchURL5,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
          VideoListElement(
            title: "Operators in Python Programming",
            link: _launchURL6,
          ),
        ],
      ),
    ),
  );
}

class VideoListElement extends StatelessWidget {
  VideoListElement({this.title, this.link});

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
      //subtitle: Text("YouTube Link"),
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
