import 'video_model.dart';

class Playlist {
  final String id;
  final int videoCount;
  List<Video> videos;

  Playlist({
    this.id,
    this.videoCount,
    this.videos,
  });

  factory Playlist.fromMap(Map<String, dynamic> map) {
    return Playlist(
      id: map['id'],
      videoCount: map['contentDetails']['itemCount'],
    );
  }
}
