import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:leftovers/models/post.dart';
import 'package:leftovers/widgets/repr/post/lists/post_tile.dart';

class PostList extends StatefulWidget {
  PostList({
    Key? key,
  }) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  dynamic postStream = FirebaseFirestore.instance
      .collection(
        'posts',
      )
      .orderBy(
        'date',
        descending: true,
      )
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: postStream,
      builder: (content, dynamic snapshot) {
        if (snapshot.hasData && snapshot.data.docs.length > 0) {
          return ListView.separated(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index) {
              return PostTile(
                post: Post.fromQueryJson(snapshot.data.docs[index]),
              );
            },
            separatorBuilder: (_, __) => Divider(),
          );
        } else {
          return Center(
              child: CircularProgressIndicator(
            semanticsLabel: 'No posts made yet',
          ));
        }
      },
    );
  }
}
