import 'package:flutter/material.dart';
import 'package:leftovers/helpers/navigation.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_date.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_leftover_count.dart';

class PostTile extends StatelessWidget {
  final post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: PostDate(
          date: post.date,
        ),
        trailing: PostLeftoverCount(
          leftoverCount: post.leftoverCount,
        ),
        onTap: () {
          goToDetailScreen(context, post);
        });
  }
}
