import 'package:flutter/material.dart';
import 'package:leftovers/helpers/navigation.dart';

class PostTile extends StatelessWidget {
  final post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(post.imageUrl),
        trailing: CircleAvatar(
          child: Text(
            post.itemCount.toString(),
          ),
        ),
        onTap: () {
          goToDetailScreen(context, post);
        });
  }
}
