import 'package:flutter/material.dart';
import 'package:leftovers/widgets/displays/loading_spinner.dart'
    show LoadingSpinner;

class PostImage extends StatelessWidget {
  final imageUrl;
  const PostImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) =>
          loadingProgress == null ? child : LoadingSpinner(),
    );
  }
}
