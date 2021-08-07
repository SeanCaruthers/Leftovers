import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;

import 'package:leftovers/widgets/inputs/buttons/list_screen_fab.dart'
    show ListScreenFab;

import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

import 'package:leftovers/widgets/repr/post/lists/post_list.dart' show PostList;

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  static const String routeName = 'list';

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  int num_leftovers = 0;

  updateLeftovers(int value) {
    num_leftovers += value;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: Text('${appTitle} - ${num_leftovers}'),
      body: PostList(updateLeftovers: updateLeftovers),
      floatingActionButton: ListScreenFab(),
    );
  }
}
