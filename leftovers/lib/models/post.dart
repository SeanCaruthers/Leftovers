class Post {
  final String imageUrl;

  final int itemCount;

  final double latitude;
  final double longitude;

  final DateTime date;

  const Post({
    required this.itemCount,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.date,
  });

  factory Post.fromQueryJson(dynamic queryJson) {
    return Post(
      imageUrl: queryJson["imageUrl"],
      itemCount: queryJson["itemCount"],
      latitude: queryJson["latitude"],
      longitude: queryJson["longitude"],
      date: DateTime.tryParse(queryJson["date"])!,
    );
  }
}
