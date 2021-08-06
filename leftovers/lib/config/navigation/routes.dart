import 'package:flutter/material.dart' show Widget, BuildContext;

import 'package:leftovers/screens/detail_screen.dart' show DetailScreen;
import 'package:leftovers/screens/list_screen.dart' show ListScreen;
import 'package:leftovers/screens/new_entry_screen.dart' show NewEntryScreen;
import 'package:leftovers/screens/image_input_screen.dart'
    show ImageInputScreen;

import 'package:leftovers/services/images/camera/take_picture_screen.dart'
    show TakePictureScreen;

final Map<String, Widget Function(BuildContext)> routes = {
  DetailScreen.routeName: (context) => DetailScreen(),
  ListScreen.routeName: (context) => ListScreen(),
  NewEntryScreen.routeName: (context) => NewEntryScreen(),
  ImageInputScreen.routeName: (context) => ImageInputScreen(),
  TakePictureScreen.routeName: (context) => TakePictureScreen(),
};

const String initialRoute = ListScreen.routeName;
