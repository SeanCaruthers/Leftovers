class Post {
  final String imageUrl;

  final int leftoverCount;

  final double latitude;
  final double longitude;

  final DateTime date;

  const Post({
    required this.leftoverCount,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.date,
  });

  factory Post.fromQueryJson(dynamic queryJson) {
    print(queryJson["date"].toString());
    print(queryJson["date"].toDate().toString());
    return Post(
      imageUrl: queryJson["imageUrl"],
      leftoverCount: queryJson["leftoverCount"],
      latitude: queryJson["latitude"],
      longitude: queryJson["longitude"],
      date: queryJson["date"].toDate(),
    );
  }
  String get dateString => this.date.toString().substring(0, 10);
}
