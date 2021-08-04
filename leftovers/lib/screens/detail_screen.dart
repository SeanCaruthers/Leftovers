
import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToPreviousScreen;

import 'package:leftovers/models/post.dart' show Post;

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static const routeName = "detail";
  @override
  Widget build(BuildContext context) {
    Post post = ModalRoute.of(context)!.settings.arguments as Post;
    print(post.imageUrl);
    return Container(
        child: ElevatedButton(
      onPressed: () {
        goToPreviousScreen(context);
      },
      child: Text("back"),
    ));
  }
}
