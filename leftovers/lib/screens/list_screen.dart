import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;

import 'package:leftovers/widgets/inputs/buttons/list_screen_fab.dart'
    show ListScreenFab;

import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

import 'package:leftovers/widgets/repr/post/lists/post_list.dart' show PostList;

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  static const String routeName = 'list';

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: Text('${appTitle} - ${num_leftovers()}'),
      body: PostList(),
      floatingActionButton: ListScreenFab(),
    );
  }

  int num_leftovers() {
    #TODO;
    return 5;
  }
}
