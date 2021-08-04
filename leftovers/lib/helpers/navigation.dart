import 'package:flutter/material.dart' show Navigator, BuildContext;
import 'package:leftovers/models/post.dart';

import 'package:leftovers/screens/new_entry_screen.dart' show NewEntryScreen;
import 'package:leftovers/screens/detail_screen.dart' show DetailScreen;

void goToNewEntryScreen(BuildContext context) {
  goToScreen(context, NewEntryScreen.routeName);
}

void goToDetailScreen(BuildContext context, Post post) {
  Navigator.of(context).pushNamed(
    DetailScreen.routeName,
    arguments: post,
  );
}

void goToScreen(BuildContext context, String screenName) {
  Navigator.of(context).pushNamed(screenName);
}

void goToPreviousScreen(BuildContext context) {
  Navigator.of(context).pop();
}
