import 'package:flutter/material.dart' show Widget, BuildContext;

import 'package:leftovers/screens/detail_screen.dart' show DetailScreen;
import 'package:leftovers/screens/list_screen.dart' show ListScreen;
import 'package:leftovers/screens/new_entry_screen.dart' show NewEntryScreen;

final Map<String, Widget Function(BuildContext)> routes = {
  DetailScreen.routeName: (context) => DetailScreen(),
  ListScreen.routeName: (context) => ListScreen(),
  NewEntryScreen.routeName: (context) => NewEntryScreen(),
};

const String initialRoute = ListScreen.routeName;
