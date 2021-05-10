import 'package:flutter/material.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/meta/hyperlinks.dart';

class YouTubePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return youtubeList(context);
  }
}

Widget youtubeList(BuildContext context) {
  List<Widget> videoList = [];
  for (int i = 0; i < videoTileStrings.length; i++) {
    videoList.add(
      VideoListElement(
        title: videoTileStrings[i],
        link: VideoLinks.linkMap[videoTileStrings[i]],
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
    child: Padding(
      padding: EdgeInsets.all(6.0),
      child: ListView(
        children: videoList,
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
    );
  }
}
