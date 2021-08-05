import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final imageUrl;
  const PostImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) =>
          loadingProgress == null ? child : CircularProgressIndicator(),
    );
  }
}
