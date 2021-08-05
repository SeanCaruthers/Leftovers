import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;

import 'package:leftovers/models/post.dart' show Post;

import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

import 'package:leftovers/widgets/repr/post/detail/postDetail.dart'
    show PostDetail;

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  static const routeName = "detail";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: const Text('${appTitle}'),
      body: PostDetail(
        post: ModalRoute.of(context)!.settings.arguments as Post,
      ),
    );
  }
}
