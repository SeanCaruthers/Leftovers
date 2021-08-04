import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToNewEntryScreen;

import 'package:leftovers/widgets/repr/post/lists/post_list.dart' show PostList;

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  static const String routeName = 'list';
  static const title = "Leftovers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: getTitle(),
      ),
      body: PostList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              goToNewEntryScreen(context);
            },
            child: Icon(Icons.photo_camera),
          );
        },
      ),
    );
  }

  Text getTitle() {
    return Text('${title} - ${num_leftovers()}');
  }

  int num_leftovers() {
    #TODO;
    return 5;
  }
}
