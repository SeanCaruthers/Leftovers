import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:leftovers/models/post.dart';
import 'package:leftovers/widgets/repr/post/lists/post_tile.dart';

class PostList extends StatefulWidget {
  final updateLeftovers;
  PostList({
    Key? key,
    required this.updateLeftovers,
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
          return postList(snapshot);
        } else {
          return noPostIndicator();
        }
      },
    );
  }

  Widget postList(snapshot) {
    return ListView.separated(
      itemCount: snapshot.data.docs.length,
      itemBuilder: (context, index) {
        return postTile(snapshot, index);
      },
      separatorBuilder: (_, __) => Divider(),
    );
  }

  Widget postTile(snapshot, index) {
    return PostTile(
      key: ValueKey(snapshot.data.docs[index].reference),
      updateLeftovers: widget.updateLeftovers,
      post: Post.fromQueryJson(snapshot.data.docs[index]),
      ref: snapshot.data.docs[index].reference,
    );
  }

  Widget noPostIndicator() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Semantics(
            label: "animation indicating that no posts have made yet.",
            child: CircularProgressIndicator(),
          ),
          Text("Please make your first post!")
        ],
      ),
    );
  }
}
