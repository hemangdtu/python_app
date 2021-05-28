class Channel {
  final String id;
  final String title;
  final String profilePictureUrl;
  final String subscriberCount;

  Channel({
    this.id,
    this.title,
    this.profilePictureUrl,
    this.subscriberCount,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
      subscriberCount: map['statistics']['subscriberCount'],
    );
  }
}
