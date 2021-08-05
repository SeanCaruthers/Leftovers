import 'package:flutter/material.dart';
import 'package:leftovers/models/post.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_date.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_image.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_latitude.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_leftover_count.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_longitude.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  const PostDetail({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          PostDate(date: post.date),
          PostImage(imageUrl: post.imageUrl),
          PostLeftoverCount(leftoverCount: post.leftoverCount),
          PostLatitude(latitude: post.latitude),
          PostLongitude(longitude: post.longitude),
        ],
      ),
    );
  }
}
