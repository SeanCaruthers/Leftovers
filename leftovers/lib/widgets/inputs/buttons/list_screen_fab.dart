import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToImageInputScreen;

class ListScreenFab extends StatelessWidget {
  ListScreenFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: true,
      label: "Start making a new post by clicking here.",
      child: FloatingActionButton(
        onPressed: () {
          goToImageInputScreen(context);
        },
        child: Semantics(
            image: true,
            label: "a camera icon",
            child: Icon(Icons.photo_camera)),
      ),
    );
  }
}
