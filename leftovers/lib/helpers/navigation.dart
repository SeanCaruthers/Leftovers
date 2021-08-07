import 'package:flutter/material.dart' show Navigator, BuildContext;

import 'package:leftovers/models/post.dart';

import 'package:leftovers/screens/new_entry_screen.dart' show NewEntryScreen;

import 'package:leftovers/screens/detail_screen.dart' show DetailScreen;

import 'package:leftovers/screens/image_input_screen.dart'
    show ImageInputScreen;

import 'package:leftovers/services/images/camera/take_picture_screen.dart'
    show TakePictureScreen;

void goToNewEntryScreen(BuildContext context, String imagePath) {
  Navigator.of(context).popAndPushNamed(
    NewEntryScreen.routeName,
    arguments: imagePath,
  );
}

void goToImageInputScreen(BuildContext context) {
  Navigator.of(context).pushNamed(ImageInputScreen.routeName);
}

void goToTakePictureScreen(BuildContext context) {
  Navigator.of(context).popAndPushNamed(TakePictureScreen.routeName);
}

void goToDetailScreen(BuildContext context, Post post) {
  Navigator.of(context).pushNamed(
    DetailScreen.routeName,
    arguments: post,
  );
}
