import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:leftovers/helpers/navigation.dart' show goToDetailScreen;

class PostList extends StatelessWidget {
  PostList({Key? key}) : super(key: key);

  dynamic postStream =
      FirebaseFirestore.instance.collection('posts').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: postStream,
      builder: (content, snapshot) {
        if (snapshot.hasData) {
          return Placeholder();
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
