import 'package:flutter/material.dart';
import 'package:python_app/meta/constants.dart';
import 'package:python_app/meta/hyperlinks.dart';
import 'package:python_app/models/YouTubeScreen/channel_model.dart';
import 'package:python_app/models/YouTubeScreen/playlist_model.dart';
import 'package:python_app/models/YouTubeScreen/video_model.dart';
import 'package:python_app/screens/video_screen.dart';
import 'package:python_app/services/youtube_api.dart';

// TODO : UI enhancements

class YouTubePage extends StatefulWidget {
  @override
  _YouTubePageState createState() => _YouTubePageState();
}

class _YouTubePageState extends State<YouTubePage> {
  Channel _channel;
  Playlist _playlist;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    Channel channel = await APIService.instance
        .fetchChannel(channelId: 'UCwne7qrrSGVbhq07hBelKig');

    Playlist playlist = await APIService.instance
        .fetchPlaylist(playlistId: 'PLPKHrH2ceHJzt7Md6k5m9mpnuS8F_TP5T');
    setState(() {
      _channel = channel;
      _playlist = playlist;
    });
  }

  _buildProfileInfo() {
    return InkWell(
      onTap: ContactUs.visitYouTube,
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35.0,
              backgroundImage: NetworkImage(_channel.profilePictureUrl),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _channel.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${_channel.subscriberCount} subscribers',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildVideo(Video video) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => VideoScreen(id: video.id),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        padding: EdgeInsets.all(10.0),
        height: 140.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Image(
              width: 150.0,
              image: NetworkImage(video.thumbnailUrl),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                video.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _playlist.id);
    List<Video> allVideos = _playlist.videos..addAll(moreVideos);
    setState(() {
      _playlist.videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientSet,
      child: _channel != null
          ? NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollDetails) {
                if (!_isLoading &&
                    _playlist.videos.length != _playlist.videoCount &&
                    scrollDetails.metrics.pixels ==
                        scrollDetails.metrics.maxScrollExtent) {
                  _loadMoreVideos();
                }
                return false;
              },
              child: ListView.builder(
                itemCount: 1 + _playlist.videos.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return _buildProfileInfo();
                  }
                  Video video = _playlist.videos[index - 1];
                  return _buildVideo(video);
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                ),
              ),
            ),
    );
  }
}

// class YouTubePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return youtubeList(context);
//   }
// }

// Widget youtubeList(BuildContext context) {
//   return Container(
//     decoration: BoxDecoration(
//       gradient: LinearGradient(
//         colors: [
//           Color(0xFF7E9BE0),
//           Color(0xFF2E8BC0),
//         ],
//         begin: Alignment.bottomCenter,
//         end: Alignment.topCenter,
//         tileMode: TileMode.clamp,
//       ),
//     ),
//     child: ListView(
//       children: [
//         for (int i = 0; i < videoTileStrings.length; i++)
//           VideoListElement(
//             title: videoTileStrings[i],
//             link: VideoLinks.linkMap[videoTileStrings[i]],
//           )
//       ],
//     ),
//   );
// }
