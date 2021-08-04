import 'package:flutter/material.dart';
import 'package:leftovers/helpers/navigation.dart';

class PostTile extends StatelessWidget {
  final post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: postDate(),
        trailing: leftoverCount(),
        onTap: () {
          goToDetailScreen(context, post);
        });
  }

  Widget postDate() {
    return Text(post.dateString);
  }

  Widget leftoverCount() {
    return CircleAvatar(
      child: Text(post.leftoverCount.toString()),
    );
  }
}
