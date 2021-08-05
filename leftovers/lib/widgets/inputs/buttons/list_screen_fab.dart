import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToNewEntryScreen;

class ListScreenFab extends StatelessWidget {
  ListScreenFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        goToNewEntryScreen(context);
      },
      child: Icon(Icons.photo_camera),
    );
  }
}
