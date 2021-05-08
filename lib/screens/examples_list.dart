import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:python_app/screens/youtube_list.dart';
import 'package:python_app/models/wavy_image_header.dart';

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
          Color(0xFF7E9BE0),
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
          //     // decoration: BoxDecoration(
          //     //   gradient: LinearGradient(
          //     //     colors: [
          //     //       Colors.red[900],
          //     //       Colors.red[600],
          //     //       Colors.red,
          //     //       Colors.red[600],
          //     //       Colors.red[900],
          //     //     ],
          //     //   ),
          //     // ),
          //     color: Color(0xFF3538B5),
          //     child: ListTile(
          //       leading: Image.asset(
          //         "assets/coding_logo.png",
          //         scale: 11.7,
          //       ),
          //       title: Center(
          //         child: Text(
          //           "Coding Examples",
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
            'assets/coding_wallpaper.jpg',
            imgScale: 5,
          ),
          VideoListElement(
            title: 'Hello, World!',
            link: _launchURL1,
          ),
          VideoListElement(
            title: 'Add Two Numbers',
            link: _launchURL2,
          ),
          VideoListElement(
            title: 'Square Root',
            link: _launchURL3,
          ),
          VideoListElement(
            title: 'Area of Triangle',
            link: _launchURL4,
          ),
          VideoListElement(
            title: 'Swap Two Variables',
            link: _launchURL5,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
          VideoListElement(
            title: 'Find Roots of Quadratic Equations',
            link: _launchURL6,
          ),
        ],
      ),
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
